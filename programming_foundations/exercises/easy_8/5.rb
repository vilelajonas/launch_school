# Palindromic Substrings

# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters
# and pay attention to case; that is, "AbcbA" is a palindrome, but neither
# "Abcba" nor "Abc-bA" are. In addition, assume that single characters are
# not palindromes.

# Examples:

def substrings_at_start(string)
  result = []
  sub_string = ''
  string.each_char do |char|
    sub_string = sub_string + char
    result << sub_string
  end
  result
end

def substrings(string)
  result = []
  while string.length > 0
    result << substrings_at_start(string)
    string.slice!(0)
  end
  result.flatten
end

def palindrome?(word)
  1.upto(word.length) do |i|
    return false unless word[i] == word[-1-i]
  end
  true
end

def palindromes(string)
  result = substrings(string)
  result.select! { |word| word.length > 1 && palindrome?(word) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
