# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact 
# letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)




words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words.each do |word|
	anagrams = word.split 
	words.each do |word_2|
		counter = 0
		word_2.each_char do |char|
			counter += 1 if word.include?(char)
		end
		if counter == word_2.length     # se word contem todas as letras de word_2 
			# retornar uma array que contenha word
			anagrams << word_2
			# adicionar word_2 à
		end
	end
	p anagrams
end
