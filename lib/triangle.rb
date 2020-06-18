class Triangle
  # write code here

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if valid_triangle?
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 && @length2 != @length3
        :isosceles
      elsif @length1 != @length2 && @length2 == @length3
        :isosceles
      elsif @length1 != @length2 && @length1 == @length3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid_triangle?
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      false
    elsif @length1 + @length2 <= @length3
      false
    elsif @length2 + @length3 <= @length1
      false
    elsif @length3 + @length1 <= @length2
      false
    else
      true
    end
  end

  class TriangleError < StandardError
  end


end
