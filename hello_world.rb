require 'minitest/autorun'

class TestMain < MiniTest::Unit::TestCase
	def test_hello_world
		assert_equal 'HELLO WORLD', 'hello world'.upcase
	end
end