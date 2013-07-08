require "module_a.rb"
require "module_b.rb"

module RubequeTasks
  class D
    include B, A
  end
end