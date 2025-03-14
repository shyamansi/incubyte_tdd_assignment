class NumberCalculator
	def add(num)
		return 0 if num.empty?
		if num.start_with?("//")
    delimiter, num = num[2..].split("\n", 2)
    num = num.gsub(delimiter, ",")
  end

  num = num.gsub("\n", ",").split(",").map(&:to_i)
   negatives = num.select { |n| n < 0 }
  raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

  num.sum
	end
end