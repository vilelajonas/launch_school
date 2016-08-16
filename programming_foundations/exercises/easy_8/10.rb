# Get The Middle Character

# Write a method that takes a non-empty string argument, and returns the middle
#  character or characters of the argument. If the argument has an odd length,
#   you should return exactly one character. If the argument has an even length,
#    you should return exactly two characters.

# Examples:

def center_of(string)
  middle_index = string.length / 2
  if string.length.even?
    string[middle_index - 1] + string[middle_index]
  else
    string[middle_index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
