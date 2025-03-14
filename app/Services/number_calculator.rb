class NumberCalculator
	def add(num)
		return 0 if num.empty?
		if num.start_with?("//")
    delimiter, num = num[2..].split("\n", 2)
    num = num.gsub(delimiter, ",")
  end

  num = num.gsub("\n", ",").split(",").map(&:to_i).sum
	end
end