# Reversed Arrays (Part 2)

# Write a method that takes an Array, and returns a new Array with the elements
#  of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
#  you wrote in the previous exercise.

# Examples:

def reverse(array)
  end_i = array.size - 1
  begin_i = 0
  result = []
  while end_i >= begin_i
    result[begin_i], result[end_i] = array[end_i], array[begin_i]
    end_i -= 1
    begin_i += 1
  end
  result
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
