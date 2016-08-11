# Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the 
# same number of elements, and each element has the running total from the 
# original Array.

# Examples:

def running_total(array)
  result = []
  array.each_index do |i|
    result[i] = (0..i).to_a.map { |e| array[e] }.inject(:+)
  end
  result
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Solution

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end
# Discussion

# This solution does nothing fancy; it just walks through the array calculating 
# the running total while building the resulting array. #map makes this really easy.

# Further Exploration

# Try solving this problem using Array#each_with_object or Enumerable#inject 
# (note that Enumerable methods can be applied to Arrays).
