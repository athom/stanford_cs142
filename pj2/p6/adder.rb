
class Adder
  def initialize(n)
	@base = n
  end

  def Adder.method_missing(methodName, *args)
	name = methodName.to_s
	begin
	  if name.include?("plus")
		n = name.delete "plus"
		class_eval(%Q[
		  def #{name}
			return #{n}.to_i + @base
		  end
		])
	  end
	rescue
	  super(methodName, *args)
	end
  end

  def method_missing(methodName, *args)
	self.class.method_missing(methodName, *args)
	send(methodName)
  end
end




x = Adder.new(10)
puts x.plus20
puts x.plus25
puts x.minus2
