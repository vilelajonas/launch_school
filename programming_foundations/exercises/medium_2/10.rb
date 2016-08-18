# Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum of
#  the first n positive integers and the sum of the squares of the first n
#   positive integers.

# Examples:

def sum_square_difference(n)
  numbers = (1..n).to_a
  square_of_sums = numbers.inject(:+) ** 2
  sum_of_squares = numbers.map { |n| n ** 2 }.inject(:+)
  square_of_sums - sum_of_squares
end

p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
