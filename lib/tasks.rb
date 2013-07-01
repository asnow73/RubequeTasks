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
end