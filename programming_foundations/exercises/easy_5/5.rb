# Clean up the words

# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the
# non-alphabetic characters replaced by spaces. If one or more non-alphabetic
# characters occur in a row, you should only have one space in the result
# (the result should never have consecutive spaces).

# Examples:
ALPHABETIC = ('a'..'z').to_a

def cleanup(string)
  string.each_char do |char|
    string.gsub!(char, '.') unless ALPHABETIC.include?(char)
  end
  string.tr_s('.',' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
