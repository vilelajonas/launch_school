# Write a method that takes one argument, a string containing one 
# or more words, and returns the given string with all five or more 
# letter words reversed. Each string will consist of only letters and 
# spaces. Spaces should be included only when more than one word is 
# present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

require 'pry'

def reverse_words(string)
  array = string.split
  array.map! do |word|
    if word.length > 4
      word.chars.reverse.join
    else
      word
    end
  end
  array.join(' ')
end

puts reverse_words('Professional') 
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

# Solution

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end
