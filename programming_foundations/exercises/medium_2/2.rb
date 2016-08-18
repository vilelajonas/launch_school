# Now I Know My ABCs

# A collection of spelling blocks has two letters per block,
#  as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words
#  that do not use both letters from any given block. Each block can only
#   be used once.

# Write a method that returns true if the word passed in as an argument
#  can be spelled from this set of blocks, false otherwise.

# Examples:


def block_word?(word)
  block = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'], ['G','T'],
          ['R','E'], ['F','S'], ['J','W'], ['H','U'], ['V','I'], ['L','Y'], 
          ['Z','M']]
  word_mirror = ''
  
  word.each_char do |char|
    block.each do |pair|
      if pair.include?(char)
        word_mirror << char
        block.delete(pair)
      end
    end
  end
  word == word_mirror
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
