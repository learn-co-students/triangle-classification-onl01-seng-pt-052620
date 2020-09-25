require 'pry'
class Triangle
  attr_accessor :left,:center,:right

  def initialize (left,center,right)
    @left = left
    @center = center
    @right = right
  end

  def kind
    if @left == @center && @right == @left
      if @left == 0 && @center == 0 && @right == 0
        raise TriangleError 
      else
        return :equilateral 
      end
    elsif @left == @center || @left == @right || @center == @right
      arr = [@left,@center,@right].sort
      if (arr[0] + arr[1]) > arr[2]
        return :isosceles
      else
        raise TriangleError
      end
    else
      if @left > 0 && @right > 0 && @center > 0
        arr = [@left,@center,@right].sort
        if (arr[0] + arr[1]) > arr[2]
          return :scalene
        else
          raise TriangleError
        end
      else 
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    
  end
end