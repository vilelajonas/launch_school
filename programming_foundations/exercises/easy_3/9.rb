# Palindromic Strings (Part 2)

# Write another method that returns true if the string passed as an argument 
# is a palindrome, false otherwise. This time, however, your method should 
# be case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you 
# wrote in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

ALPHANUMERICS = ('a'..'z').to_a + ('0'..'9').to_a

def palindrome?(string)
  string.downcase == string.downcase.reverse
end

def real_palindrome?(string)
  new_string = string.downcase
  new_string.each_char do |char|
    new_string.delete!(char) unless ALPHANUMERICS.include?(char)
  end
  palindrome?(new_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
