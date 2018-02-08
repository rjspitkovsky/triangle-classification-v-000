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
    end

    if @length1 == @length2 || @length1 == @length3 || @length2 == @length3 && !(@length1 == @length2 && @length2 == @length3)
      return :isosceles
    end

    if @length1 != @length2 && @length2 != @length3 && @length1 != @length3
      return :scalene
    end


    if (@length1 == 0 || @length2 == 0 || @length3 == 0) ||(@length1 + @length2 > @length3 || @length1 + @length3 > @length2 || @length2 + @length3 > @length1)
      begin 
      raise TriangleError
    rescue TriangleError => error
      error.message
    end

  end
end







  # def self.invalid?
  #     (@length1 == 0 || @length2 == 0 || @length3 == 0) || (@length1 + @length2 > @length3 || @length1 + @length3 > @length2 || @length2 + @length3 > @length1)
  #   end


class TriangleError < StandardError
  def message
    "This triangle violates triangle inequality."
  end
end
