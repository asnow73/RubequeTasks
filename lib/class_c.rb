require "module_a.rb"
require "module_b.rb"

module RubequeTasks
  class C
    include A
    include B
  end
end