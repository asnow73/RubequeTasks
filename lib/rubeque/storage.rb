module Rubeque
  class Storage
    def initialize(arr)
      @storage = arr
    end

    def push(arr)
      arr.each { |i| @storage.push(i) }
      true
    end   

    def to_a
      @storage
    end
  end
end