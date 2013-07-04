require 'storage.rb'

module RubequeTasks
  class Stack < Storage
  	def pop(val = 0)
  	  val == 0 ? @storage.pop : @storage.pop(3).reverse
  	end
  end
end