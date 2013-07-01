require 'minitest/autorun'

class TestMain < MiniTest::Unit::TestCase
	def test_reverse
		assert_equal 'nocab yknuhc'.reverse, 'chunky bacon'
	end
end