# Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all
#  parentheses in the string are properly balanced, false otherwise. To be
#   properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

def balanced?(string)
  characters = string.chars
  return false if characters.count('(') != characters.count(')')
  parentheses_indexes = { open: [], close: []}
  
  characters.each_with_index do |c, i|
    parentheses_indexes[:open] << i if c == '('
    parentheses_indexes[:close] << i if c == ')' 
  end
  
  parentheses_indexes[:open].each do |open|
    return false if open > parentheses_indexes[:close].max
  end
  
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
