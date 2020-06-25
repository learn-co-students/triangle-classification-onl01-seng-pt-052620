class Triangle
  attr_accessor :first, :second, :third 
  def initialize(first, second, third)
    @first = first 
    @second = second 
    @third = third 
  end 
  
  def validate 
     if first <= 0 || second <= 0 || third <= 0 
        raise TriangleError
     elsif 
        (first + second) <= third || (first + third) <= second || 
        (second + third) <= first     
        raise TriangleError     
     end 

  end 

  def kind 
    validate    
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

# 1) Triangle knows that triangles with no size are illegal
# Failure/Error: expect{Triangle.new(0, 0, 0).kind}.to raise_error(Triangle::TriangleError)
#   expected Triangle::TriangleError but nothing was raised
# # ./spec/triangle_spec.rb:44:in `block (2 levels) in <top (required)>'

# 2) Triangle knows that triangles with negative sides are illegal
# Failure/Error: expect{Triangle.new(3, 4, -5).kind}.to raise_error(Triangle::TriangleError)
#   expected Triangle::TriangleError but nothing was raised
# # ./spec/triangle_spec.rb:48:in `block (2 levels) in <top (required)>'

# 3) Triangle knows that triangles violating triangle inequality are illegal
# Failure/Error: expect{Triangle.new(1, 1, 3).kind}.to raise_error(Triangle::TriangleError)
#   expected Triangle::TriangleError but nothing was raised
# # ./spec/triangle_spec.rb:52:in `block (2 levels) in <top (required)>'

# 4) Triangle knows that triangles violating triangle inequality are illegal 2
# Failure/Error: expect{Triangle.new(2, 4, 2).kind}.to raise_error(Triangle::TriangleError)
#   expected Triangle::TriangleError but nothing was raised
# # ./spec/triangle_spec.rb:56:in `block (2 levels) in <top (required)>'

# 5) Triangle knows that triangles violating triangle inequality are illegal 3
# Failure/Error: expect{Triangle.new(7, 3, 2).kind}.to raise_error(Triangle::TriangleError)
#   expected Triangle::TriangleError but nothing was raised
# # ./spec/triangle_spec.rb:60:in `block (2 levels) in <top (required)>'



# # def validate_triangle
# #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
# #   [a, b, c].each do |side|
# #     real_triangle << false if side <= 0 
# #   raise TriangleError if real_triangle.include?(false)
# #   end
# # end

# # class TriangleError < StandardError
# # end