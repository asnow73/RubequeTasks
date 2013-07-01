require 'minitest/autorun'

class MainTest < MiniTest::Unit::TestCase
	def test_nil_values
		[0, '', 'chunky_bacon'].each { |v| assert_equal v.nil?, false }
	end
end