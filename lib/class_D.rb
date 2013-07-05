require "module_A.rb"
require "module_B.rb"

module RubequeTasks
  class D
    include B, A
  end
end