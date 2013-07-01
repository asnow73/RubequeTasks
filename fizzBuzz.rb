require 'minitest/autorun'

def fizzbuzz(x)
	res = ''
	if x % 3 == 0
		res += 'Fizz'
	end
	if x % 5 == 0
		res += 'Buzz'
	end
	res
end

class MainTest < Minitest::Unit::TestCase
	def test_fizzbuzz
		assert_equal fizzbuzz(3), "Fizz"
		assert_equal fizzbuzz(50), "Buzz"
		assert_equal fizzbuzz(15), "FizzBuzz"
		assert_equal fizzbuzz(5175), "FizzBuzz"
	end
end