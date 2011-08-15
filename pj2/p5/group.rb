
module Enumerable
  def each_group_by_first(&b)
	if block_given?
	  hs = {}
	  each do |x|
		if hs[x[0]]
		  hs[x[0]] << x
		else
		  hs[x[0]] = [x]
		end
	  end

	  hs.sort.map do |k, v|
		yield k.chr, v
	  end
	else
	  puts '!'
	end
  end
end



x = ["abcd", "axyz", "able", "xyzab", "qrst"]

x.each_group_by_first do |letter, words|
  printf("%s: %s\n", letter, words.join(" "));
end

