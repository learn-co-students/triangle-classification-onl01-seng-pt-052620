class Triangle
 
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
  end
  
  def valid?
    one_two = @sides[0] + @sides[1]
    one_three = @sides[0] + @sides[2]
    two_three = @sides[1] + @sides[2]

    if @sides != 0 && (one_two > @sides[2] && one_three > @sides[1] && two_three > @sides[0])
      return true 
    else
      return false 
    end
  end
  
  def kind
    if valid?
      if @sides.uniq.length == 1 
        return :equilateral
      elsif @sides.uniq.length == 2 
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
  
  end
end

# Revisit. Maybe can simplify for practice.

