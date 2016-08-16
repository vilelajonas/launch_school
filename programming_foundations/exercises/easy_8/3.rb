# Leading Substrings

# Write a method that returns a list of all substrings of a string that start 
# at the beginning of the original string. The return value should be arranged 
# in order from shortest to longest substring.

# Examples:

def substrings_at_start(string)
  result = []
  sub_string = ''
  string.each_char do |char|
    sub_string = sub_string + char
    result << sub_string
  end
  result
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
