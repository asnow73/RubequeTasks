require "module_A.rb"
require "module_B.rb"

module RubequeTasks
  class C
    include A
    include B
  end
end