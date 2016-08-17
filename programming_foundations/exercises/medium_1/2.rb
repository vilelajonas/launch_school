# Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  array = number.to_s.chars
  right_digits = array.slice!(-digits, digits)
  (array + rotate_array(right_digits)).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915  
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
