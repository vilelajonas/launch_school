# Multiples of 3 and 5

# Write a method that computes the sum of all numbers between 1 and some other
# number that are a multiple of 3 or 5. For instance, if the supplied number
# is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

def multisum(num)
  multiples_3_and_5 = (1..num).to_a.map do |n|
                        n if (n % 3).zero? || (n % 5).zero?
                      end
  multiples_3_and_5.compact.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
