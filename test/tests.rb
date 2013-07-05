#require_relative 'test_helper'

require "test_helper" #require "./test_helper"
#autoload :RubequeTasks, "../lib/tasks"
require "tasks" #require "../lib/tasks"

module RubequeTests
  class TestMain < MiniTest::Unit::TestCase

    include RubequeTasks

    def test_true
      assert_equal true, the_truth
    end

    def test_reverse
	    assert_equal "nocab yknuhc".reverse, reverse
    end

    def test_hello_world
      assert_equal "HELLO WORLD", hello_world
    end

    def test_maximum
      assert_equal maximum([2, 42, 22, 02]), 42
      assert_equal maximum([-2, 0, 33, 304, 2, -2]), 304
      assert_equal maximum([1]), 1
    end

    def test_nil_values
      [0, "", "chunky_bacon"].each { |v| assert_equal v.nil?, nil_values }
    end
    
    def test_map
      assert_equal [1, 4, 9, 16], map
    end

    def test_fizzbuzz
      assert_equal fizzbuzz(3), "Fizz"
      assert_equal fizzbuzz(50), "Buzz"
      assert_equal fizzbuzz(15), "FizzBuzz"
      assert_equal fizzbuzz(5175), "FizzBuzz"
    end

    def test_missing_method
      assert_equal [1, 4, nil, 9, 16, nil].compact.inject(0) {|sum, number| sum + number}, 30
    end

    def test_blackjack
      assert_equal twenty_one?(3, 4, 5, 6, 3), true
      assert_equal twenty_one?(3, 11, 10), false
      assert_equal twenty_one?(10, 11), true
    end

    def test_missing_method_2
      assert_equal [1, 3, 7, 4, 9, 8].detect(&:even?), 4
    end

    def test_temperature_robot
      assert_equal temperature_bot(18), "I like this temperature"
      assert_equal temperature_bot(21), "I like this temperature"
      assert_equal temperature_bot(22), "This is uncomfortable for me"
      assert_equal temperature_bot(-3), "This is uncomfortable for me"
    end

    def test_injected_and_rejected
      assert_equal sum_over_50([29, 52, 77, 102]), 231
      assert_equal sum_over_50([5, 11, 50]), 0
      assert_equal sum_over_50([4, 8, 15, 16, 23, 42]), 0
      assert_equal sum_over_50([300, 22, 1, 55, 42]), 355
    end

    def test_theres_no_way_this_works
      @name = "Dave"
      str = "My mind is going #@name"

      assert_equal (str == "My mind is going Dave"), theres_no_way_this_works
    end

    def test_home_on_the_range
      assert_equal (1..100).to_a[home_on_the_range].reduce(:+), 4494
    end

    def test_array_item_removal
      #params = array_item_removal
      #assert_equal ([:r, :u, :b, :e, :q, :u, :e].method(params.method_name).call(&params.lambda)), [:b, :q]     
      arr = [:r, :u, :b, :e, :q, :u, :e].delete_if { |item| item != :b && item != :q }
      assert_equal arr, [:b, :q]
    end

    def test_log_versus_and
      roses = "blue" && "red"
      violets = "blue" and "red"
      assert_equal roses, "red"
      assert_equal violets, log_versus_and
    end

    def test_subtracting_out_the_sugar
      assert_equal 2.+(2), 2 + 2
      assert_equal 40.+(2), 42
    end

    def test_string_concat_demo
      str = "Hello" "World"
      assert_equal str, string_concat_demo
    end

    def test_or_equal
      b = 8
      c = false

      a ||= "rubeque"
      b ||= "rubeque"
      c ||= "rubeque"

      assert_equal a, "rubeque"
      assert_equal b, 8
      assert_equal c, or_equal
    end

    def test_brackets_and_searches
      index = brackets_and_searches
      assert_equal "hello world"[index], "e"
      assert_equal "what"[index],        nil
      assert_equal "rubeque"[index],     "e"
      assert_equal "E"[index],           nil
    end

    def test_alternate_array_notation
      assert_equal %w(hello world), ["hello", "world"]
      assert_equal %w{1 2 3 4}, ["1", "2", "3", "4"]
      assert_equal %w?remembrance of things past?, ["remembrance", "of", "things", "past"]
    end

    def test_set_intersection
      assert_equal ([ 1, 1, 3, 5 ] & [ 1, 2, 3 ]), [ 1, 3 ]
    end

    def test_getters_and_setters
      thorin = Character.new
      thorin.name = "Thorin Oakenshield"
      thorin.quote = "Some courage and some wisdom, blended in measure. If more of us valued food and cheer and song above hoarded gold, it would be a merrier world"

      stephen = Character.new
      stephen.name = "Stephen Dedalus"

      assert_equal thorin.name, "Thorin Oakenshield"
      assert_equal stephen.name, "Stephen Dedalus"
    end

    def test_queue_continuum
      queue = Queue.new([5, 6, 7, 8])
      assert_equal queue.pop, 5
      assert_equal queue.pop, 6
      assert_equal queue.push([4, 2]), true
      assert_equal queue.pop(2), [7, 8]
      assert_equal queue.to_a, [4, 2]
    end

    def test_ternary_operator
      a = "Miles O'Brien"
      b = "Barack Obama"

      assert_equal ((a =~ /[ ]\w'/) ? "Irish" : "Not Irish"), "Irish"
      assert_equal ((b =~ /[ ]\w'/) ? "Irish" : "Not Irish"), "Not Irish"
    end

    def test_caution_case
      assert_equal caution_case( 1 ), true
      assert_equal caution_case( [1, 2] ), true
      assert_equal caution_case( {1=>2} ), true
      assert_equal caution_case( (1..2) ), false
    end

    def test_the_limits_of_probability
      random_values = (0..1000000).inject(0.0) do |sum, _|
        sum += rand(14) + rand(14)
      end

      assert_equal (random_values/1000000.0).round, the_limits_of_probability
    end

    def test_missing_method_3
      a1 = [1, 2, 3]
      a2 = [2, 3, 4]
      b1 = ["durham", "bartow", "zwolle"]
      b2 = ["nc", "fl", "nl"]

      assert_equal a1.zip(a2), [[1, 2], [2, 3], [3, 4]]
      assert_equal [10, 11, 12].zip(a1, a2), [[10, 1, 2], [11, 2, 3], [12, 3, 4]]
      assert_equal b1.zip(b2), [["durham", "nc"], ["bartow", "fl"], ["zwolle", "nl"]]
    end

    def test_baby_got_stacks
      stack = Stack.new([5, 6, 7, 8])

      assert_equal stack.pop, 8
      assert_equal stack.pop, 7
      assert_equal stack.push([4, 2]), true
      assert_equal stack.pop(3), [2, 4, 6]
      assert_equal stack.to_a, [5]
    end

    def test_defined_or_not
      w = :whatever if false
      assert_equal defined?(w) != nil, defined_or_not
    end

    def test_no_limit
      assert_equal ["1", "2", "3"], "1,2,3".split(',', -1)
      assert_equal ["", "", "1", "2", "3"], ",,1,2,3".split(',', -1)
      assert_equal ["1", "2", "3", "", ""], "1,2,3,,".split(',', -1)
    end

    def test_missing_method_ancestors
      assert_equal B.ancestors[1], A
    end
  end
end