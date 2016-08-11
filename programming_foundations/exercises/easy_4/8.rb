# Convert a String to a Signed Number!

# In the previous exercise, you developed a method that converts simple numeric 
# strings to Integers. In this exercise, you're going to extend that method to 
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the first 
# character is a +, your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should 
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. You may, however, use the string_to_integer 
# method from the previous lesson.

# Examples
require 'pry'

RULE = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
        '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def cut_operator(string)
  if string.start_with?('-', '+')
    string.delete(string[0])
  else
    string
  end
end

def string_to_signed_integer(string)
  digits = cut_operator(string)
  result = []
  multiplier = 1
  digits.reverse.each_char do |char|
    result << RULE[char] * multiplier
    multiplier *= 10
  end
  string.start_with?('-') ? (result.inject(:+) * -1) : result.inject(:+)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
