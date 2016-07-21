# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact 
# letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)




words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

all_anagrams = []
words.each do |word|
	new_anagram = word.split 
	words.each do |word_2|
		counter = 0
		word_2.each_char do |char|
			counter += 1 if word.include?(char)
		end
		if counter == word_2.length     # word contains all characters of word_2? 
			new_anagram << word_2
		end
	end
	all_anagrams << new_anagram
end

all_anagrams.map! { |ana| ana.sort.uniq }
all_anagrams.uniq.each { |ana| p ana }
