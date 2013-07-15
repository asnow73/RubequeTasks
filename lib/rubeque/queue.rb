module Rubeque
  class Queue < Storage
    def pop(val = 0)
      val == 0 ? @storage.shift : @storage.shift(val)
    end
  end
end