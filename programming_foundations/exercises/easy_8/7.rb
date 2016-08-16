# Double Char (Part 1)

# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# Examples:

def repeater(string)
  string.chars.each  { |char| char << char }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''