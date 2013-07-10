# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
# Your code here

def fizzbuzz(count)
		if count % 3 == 0 && count % 5 == 0
			"FizzBuzz"
		elsif count % 3 == 0
			"Fizz"
		elsif count % 5 == 0
			"Buzz"
		else
			count
		end
end

# def fizzbuzz(num)
# 	case 
# 	when num % 5 == 0 && num % 3 == 0
# 		"FizzBuzz"
# 	when num % 5 == 0
# 		"Fizz"
# 	when num % 3 == 0
# 		"Buzz"		
# 	end



# def fizzbuzz(num)
# 	"".tap do |fb|
# 		fb << "Fizz" if num % 3 == 0
# 		fb << "Buzz" if num % 5 == 0
# 		fb << num.to_s unless num % 3 == 0 || num % 5 == 0
# end




# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# uncomment this code when your tests pass
1.upto(100) do |number|
 puts fizzbuzz(number)
end
