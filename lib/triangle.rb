require 'pry'

class Triangle

  attr_reader :side_1, :side_2, :side_3
  attr_accessor :type

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 

  def kind
    validation
    if side_1 == side_2 && side_2 == side_3 
      @type = :equilateral
    elsif 
      side_2 == side_3 && side_3 != side_1 ||
      side_1 == side_3 && side_3 != side_2 ||
      side_1 == side_2 && side_3 != side_1
        @type = :isosceles
    elsif 
      side_1 != side_2 && side_2 != side_3
        @type = :scalene
    end  
  end 

  def validation
    if side_1 <= 0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError
    elsif side_1 + side_2 <= side_3 || side_2 + side_3 <= side_1 || side_1 + side_3 <= side_2
      raise TriangleError
    end 
  end 


  class TriangleError < StandardError
  end

end
