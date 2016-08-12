# Letter Counter (Part 2)

# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# Examples


def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    word.delete!('^a-zA-Z')
    result[word.length] += 1
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}