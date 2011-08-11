
def each_starts_with(arr, str, &b)
  arr.each do |a|
	if block_given?
	  yield a if a.index(str) == 0
	end
  end
end

t = each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst"], "ab") {|s| puts s}

