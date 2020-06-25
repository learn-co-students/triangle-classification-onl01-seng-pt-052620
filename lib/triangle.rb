class Triangle
  attr_accessor :first, :second, :third 
  def initialize(first, second, third)
    @first = first 
    @second = second 
    @third = third 
  end 
  
  def kind 
    if first == second && second == third 
      :equilateral  
    elsif 
      first != second && second == third || 
      first == third && first != second || 
      first == second && first != third   
      :isosceles 
    elsif 
      first != second || second != third || third != first 
      :scalene  
  end 
end 

   

  class TriangleError < StandardError  
  end 
end




# def validate_triangle
#   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#   [a, b, c].each do |side|
#     real_triangle << false if side <= 0 
#   raise TriangleError if real_triangle.include?(false)
#   end
# end

# class TriangleError < StandardError
# end