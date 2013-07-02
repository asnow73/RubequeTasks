module Rubeque_tasks
  def the_truth
    true
  end

  def reverse
    'chunky bacon'
  end

  def hello_world
    'hello world'.upcase
  end

  def maximum(arr)
    arr.max
  end

  def nil_values
    false
  end

  def map
    (1..4).map {|item| item**2}
  end

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

  def missing_method#(arr)
    'compact'
  end

  def twenty_one?(*values)
    res = values.inject {|sum, num| sum += num }
    res % 21 == 0
  end

  def missing_method_2
    'detect'
  end

  def temperature_bot(temp)
    #  temperature bot is American but takes Celsius temperatures
    case temp
    when 18..21
      "I like this temperature"
    else
      "This is uncomfortable for me"
    end
  end

  def sum_over_50(arr)
    arr.reject {|i| i <= 50 }.inject(0) {|sum, val| sum += val }
  end

  def theres_no_way_this_works
    true
  end

  def home_on_the_range
    11..94
  end

  Methodd_with_lambda = Struct.new(:method_name, :lambda)
  def array_item_removal
    content = lambda do 
      |item| item != :b && item != :q
    end
    res = Methodd_with_lambda.new('delete_if', content)
  end
end