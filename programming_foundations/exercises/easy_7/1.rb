# Combine Two Lists

# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
#  elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they
#  have the same number of elements.

# Example:

def interleave(array1, array2)
  result = []
  array1.each_index do |i|
    result << array1[i] << array2[i]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end
