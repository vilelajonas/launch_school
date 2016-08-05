# Question 8

# In another example we used some built-in string methods to change the 
# case of a string. A notably missing method is something provided in 
# Rails, but not in Ruby itself...titleize! This method in 
# Ruby on Rails creates a string that has each word capitalized as 
# it would be in a title.

# Write your own version of the rails titleize implementation.

def titleize(phrase)
  words = phrase.split
  words.each do |word|
    word.capitalize!
  end
  words.join(' ')
end

p titleize('own version of the rails titleize implementation')