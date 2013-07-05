module RubequeTasks
  CONST = rand
  class Foo
    CONST = rand(100)
    def name
      "foo"
    end

    def say_name
      "#{name}"
    end

    def foo
      RubequeTasks.const_get(:CONST)
    end
  end
end