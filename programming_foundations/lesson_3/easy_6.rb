# Starting with the string:

famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and "
#  in front of it.
initial_words = "Four score and "
initial_words << famous_words

famous_words.insert(0, initial_words)