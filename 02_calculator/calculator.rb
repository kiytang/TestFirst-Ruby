def add(a,b)
	a+b
end

def subtract(a,b)
	a - b
end

def sum(array)
	array.inject(0) {|sum, x| sum + x }
	 # array.inject(0, :+)
end

def multiply(*numbers)
  numbers.inject(1, :*)
end

# alternative syntax:
# def multiply(*numbers)
# 	numbers.inject(1) {|sum, n| sum * n  }
# end

# def multiply(*numbers)
# 	result = 1
# 	numbers.each { |n| result = result * n}
# 	result
# end

#exponent (power)
def power(a,b)
	a**b
end

puts power(8,3)


def factorial(number)
	if number == 0
		1
	else
	number.downto(1).reduce(:*)
	end
end

# def fact(number)
#   if number == 0
#     1
#   else
#     number * fact(number-1)
#   end
# end

puts factorial(0) 



