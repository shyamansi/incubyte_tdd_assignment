class NumberCalculator
	def add(num)
		return 0 if num.empty?
		return num.to_i if num
	end
end