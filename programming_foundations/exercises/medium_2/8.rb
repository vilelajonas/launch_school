# Next Featured Number Higher than a Given Value

# A featured number (something unique to this exercise) is an odd number that
#  is a multiple of 7, and whose digits occur exactly once each. So, for
#   example, 49 is a featured number, but 98 is not (it is not odd), 97 is
#    not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
#  next featured number that is greater than the argument. Issue an error
#   message if there is no next featured number.

# Examples:

def appears_once?(num)
  num == num.to_s.chars.uniq.join.to_i
end

def next_featured(last_featured)
  num = last_featured + 14
  until num.odd? && appears_once?(num)
    num += 14
  end
  num
end

def featured(int)
  featured = [21]
  while featured[-1] <= int
    next_feat = next_featured(featured[-1])
    if featured[-1] >= 9_876_543_210
      return "There is no possible number that fulfills those requirements"
    end
    featured << next_feat
  end
  featured.last
end

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills
# those requirements
