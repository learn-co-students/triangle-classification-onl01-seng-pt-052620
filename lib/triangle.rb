require 'pry'

class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    # triangle_sides.each {|key, value| self.send(("#{key}="),value)}
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end


  def kind
    # binding.pry

    if !valid? || !inequality?
       raise TriangleError
    else 
      if self.length1 == self.length2 && self.length1 == self.length3
        :equilateral
      elsif self.length1 == self.length2 || self.length1 == self.length3 || self.length2 == self.length3
        :isosceles
      else
        :scalene
      end

    end

  end

  def valid?
    self.length1 > 0 && self.length2 > 0 && self.length3 > 0
  end

  def inequality?
    self.length1 + self.length2 > self.length3 && self.length1 + self.length3 > self.length2 && self.length2 + self.length3 > self.length1
  end
  

  class TriangleError < StandardError
  end


end
