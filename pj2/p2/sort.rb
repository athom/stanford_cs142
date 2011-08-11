

def funny_sort(*a)
  a.sort! do |x,y| 
	m = x.to_s.split(/\D+/)
	n = y.to_s.split(/\D+/)
	if m.empty?
	  xx = -1
	else
	  m.delete ""
	  xx = m[0].to_i
	end
	if n.empty?
	  yy = -1
	else
	  n.delete ""
	  yy = n[0].to_i
	end
	xx <=> yy
  end
end

a=["sa0100000dsdf","i290","12324x457"]
puts "before"
puts a
b = funny_sort(*a)
puts "after"
puts b

