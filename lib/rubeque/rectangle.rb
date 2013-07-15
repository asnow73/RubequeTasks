module Rubeque
  class Rectangle
    attr_accessor :upper_left, :lower_right

    def initialize(upper_left, lower_right)
      self.upper_left, self.lower_right = upper_left, lower_right
    end

    def area
      (self.upper_left.x - self.lower_right.x).abs * (self.upper_left.y - self.lower_right.y).abs
    end
  end
end