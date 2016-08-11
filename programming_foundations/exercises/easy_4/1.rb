# Short Long Short

# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter 
# string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

def short_long_short(string1, string2)
  short = string1.length < string2.length ? string1 : string2
  long = string1.length > string2.length ? string1 : string2
  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
