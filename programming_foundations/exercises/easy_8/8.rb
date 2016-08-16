# Double Char (Part 2)

# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation,
# and whitespace should not be doubled.

# Examples:
CONSONANTS = %w(b c d f g h j k l m n p q r s t v x y w z)
def double_consonants(string)
  new_string_chars = string.downcase.chars.select { |c| CONSONANTS.include?(c) }
  string.chars.each do |char|
    char << char if new_string_chars.include?(char.downcase)
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""