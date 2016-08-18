# Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the percentage of characters in the string that
# are lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples

def letter_percentages(string)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if ('A'..'Z').to_a.include?(char)
      percentages[:uppercase] += 1
    elsif ('a'..'z').to_a.include?(char)
      percentages[:lowercase] += 1
    else
      percentages[:neither] += 1      
    end
  end
  percentages.each do |k, v|
    percentages[k] = ((v * 100) / string.length.to_f).round(2)
  end
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
