# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if (![a,b,c].select{|side| side <1}.empty?)
      raise TriangleError
  end
  
  if (!([a,b,c].permutation(3).select{|combo| combo[0] >= combo[1] + combo[2]}.empty?))
    raise TriangleError
  end
  
  if (a==b && b==c)
    :equilateral
  elsif a==b || b==c || a==c
    :isosceles
  elsif a!=b && b!=c && a!=c
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
