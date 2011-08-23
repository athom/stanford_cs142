
def filter(arr, h = {}, &b)
  arr.delete_if{|x| x % 2 == 0 } if h[:odd] == 1
  arr.delete_if{|x| x % 2 != 0 } if h[:even] == 1
  arr.delete_if{|x| x < h[:min]} if !h[:min].nil?
  arr.delete_if{|x| x > h[:max]} if !h[:max].nil?
  scale = (h[:scale].nil?) ? 1:h[:scale]
  arr.each do |a|
	if block_given?
	  yield a*scale
	end
  end

end

nums = [6, -5, 319, 400, 18, 94, 11]
#filter(nums, :min => 10, :max => 350, :odd => 1, :scale => 2){|n| puts n}
#filter(nums, :max => 0) {|n| puts n}
filter(nums) {|n| puts n}

