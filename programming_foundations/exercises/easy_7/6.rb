# Staggered Caps (Part 2)

# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each
#  letter. The non-alphabetic characters should still be included in the
#   return value; they just don't count when toggling the desired case.

# Example:
ALPHABETIC = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(string)
  result = string.downcase.chars
  i = 0
  result.each do |char|
    next unless ALPHABETIC.include?(char)
    if ALPHABETIC.include?(char)
      char.capitalize! if i.even?
      i += 1
    else
      char
    end
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
