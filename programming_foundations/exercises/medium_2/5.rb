# Triangle Sides

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
#  be greater than the length of the longest side, and all sides must have
#   lengths greater than 0: if either of these conditions is not satisfied,
#    the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
#  arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
#   :invalid depending on whether the triangle is equilateral, isosceles,
#    scalene, or invalid.

# Examples:
require 'pry'
def valid_triangle?(side1, side2, side3)
  all_sides = [side1, side2, side3]
  longest = all_sides.max
  sum_of_shortest = all_sides
  sum_of_shortest.delete_at(sum_of_shortest.index(sum_of_shortest.max))
  sum_of_shortest = sum_of_shortest.inject(:+)

  return false if all_sides.include?(0) || sum_of_shortest < longest
  true
end

def triangle(side1, side2, side3)
  return :invalid unless valid_triangle?(side1, side2, side3)  
  if side1 == side2 && side2 == side3
    :equilateral
  elsif side1 != side2 && side2 != side3
    :scalene
  else
    :isosceles        
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
