# Palindromic Strings (Part 1)

# Write a method that returns true if the string passed as an argument is a 
# palindrome, false otherwise. (A palindrome reads the same forwards and 
# backwards.) Case matters, and all characters should be considered.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string.chars == string.reverse.chars
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

def palindrome2?(array)
  array == array.reverse
end
