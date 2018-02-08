class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind

    if (@length1 == @length2) && (@length2 == @length3)
      return :equilateral
    elsif
       @length1 == @length2 || @length1 == @length3 || @length2 == @length3 && !(@length1 == @length2 && @length2 == @length3)
      return :isosceles
    elsif @length1 != @length2 && @length2 != @length3 && @length1 != @length3
      return :scalene
    elsif


     self.length1 == 0 || self.length2 == 0 || self.length3 == 0 ||self.length1 + self.length2 > self.length3 || self.length1 + self.length3 > self.length2 || self.length2 + self.length3 > self.length1
      raise TriangleError

     end
  end
end







  # def self.invalid?
  #     (@length1 == 0 || @length2 == 0 || @length3 == 0) || (@length1 + @length2 > @length3 || @length1 + @length3 > @length2 || @length2 + @length3 > @length1)
  #   end


class TriangleError < StandardError
end
