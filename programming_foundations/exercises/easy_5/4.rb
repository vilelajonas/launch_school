# Letter Swap

# Given a string of words separated by spaces, write a method that takes this 
# string of words and returns a string in which the first and last letters of 
# every word is swapped.

# You may assume that every word contains at least one letter, and that the 
# string will always contain at least one word. You may also assume that each 
# string contains nothing but words and spaces

# Examples:

def swap(string)
  words = string.split
  words.each do |word|
    first_char = word[0]
    word[0] = word[-1]
    word[-1] = first_char
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


# Solution

# Using substrings

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end
# Discussion

# Our solution takes a straightforward approach; it simply chops the string into words, then iterates through all of the words using map, and produces an array of modified words. We then apply join to that array to produce our return value.

# The tricky part here is actually swapping the first and last characters of each word. Because of the mild trickiness, we use a separate method. It uses this common idiom:

# a, b = b, a
# to exchange the values of a and b. In our method, a is the first letter of the word, and b is the last letter of the word.

# Further Exploration

# How come our solution does not use the return value of swap_first_last_characters? Suppose we had this method:

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end
# (disregard the lousy name) and called it like this:

# swap_first_last_characters(word[0], word[-1])
# Would this method work? Why or why not?

# ANSWER: 

#   It will not work, because swap_first_last_characters(word[0], word[-1]) Would
#   return the values of word[1] and word[0], but would not change the original 
#   word.