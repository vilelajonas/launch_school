# Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
#  an odd integer that is supplied as an argument to the method. You may assume
#   that the argument will always be an odd integer.

# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def diamond(diameter)
  points = (1..diameter).to_a.select { |n| n if n.odd?}
  until points.first == points.last
    points.push(points.last - 2)
  end
  points.each do |p|
    puts "#{('*' * p).center(diameter)}"
  end
end

diamond 11
