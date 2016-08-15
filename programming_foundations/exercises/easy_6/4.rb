# Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements
#  in place; that is, mutate the Array passed in to this method. The return 
#  value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

def reverse!(array)
  end_i = array.size - 1
  begin_i = 0
  while end_i > begin_i
    array[begin_i], array[end_i] = array[end_i], array[begin_i]
    
    end_i -= 1
    begin_i += 1
  end
  array
end

p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]
p 
p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]
p 
p list = []
p reverse!([]) # => []
p list == []
