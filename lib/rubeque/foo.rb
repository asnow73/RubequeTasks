module Rubeque
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
      Rubeque.const_get(:CONST)
    end
  end
end