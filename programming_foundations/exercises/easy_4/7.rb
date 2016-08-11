# Convert a String to a Number!

# The String#to_i method converts a string of numeric characters 
# (including an optional plus or minus sign) to an Integer. String#to_int 
# and Integer behave similarly. In this exercise, you are going to create 
# your own conversion method.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry 
# about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. Your method should do this the 
# old-fashioned way and calculate the result by analyzing the 
# characters in the string.

# Examples

RULE = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
        '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def string_to_integer(string)
  result = []
  multiplier = 1
  string.reverse.each_char do |char|
    result << RULE[char] * multiplier
    multiplier *= 10
  end
  result.inject(:+)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Further Exploration

# Write a hexadecimal_to_integer method that converts a string representing
# a hexadecimal number to its integer value.

# Example:

HEXADECIMALS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                 '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
                 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

def hexadecimal_to_integer(string)
  digits = string.downcase.reverse.chars
  result = []
  digits.each_with_index do |d, idx|
    result << HEXADECIMALS[d] * (16 ** idx)
  end
  result.inject(:+)
end

p hexadecimal_to_integer('4D9f')
