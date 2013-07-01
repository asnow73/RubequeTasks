require 'minitest/autorun'

class MainTest < MiniTest::Unit::TestCase
	def test_map
		assert_equal [1, 4, 9, 16], (1..4).map {|item| item**2}
	end
end