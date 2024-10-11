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
  raise TriangleError, 'Sum of two sides must be greater than the third.' if a + b < c || b + c < a || a + c < b # not a triangle!
  raise TriangleError, 'Sum of two sides must not be equal to the third.' if a + b == c || b + c == a || a + c == b # degenerate triangle!

  return :equilateral  if a == b && a == c
  return :isosceles    if a == b || b == c || a == c
  return :scalene      if a != b && b != c && a != c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
