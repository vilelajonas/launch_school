# Uppercase Check

# Write a method that takes a string argument, and returns true if all of the 
# alphabetic characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

# Examples:

def uppercase?(string)
  string.each_char do |c|
    return false if ('a'..'z').to_a.include?(c)
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Solution

# def uppercase?(string)
#   string == string.upcase
# end