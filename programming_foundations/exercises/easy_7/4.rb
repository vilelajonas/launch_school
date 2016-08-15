# Swap Case

# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, and 
# every lowercase letter by its uppercase version. All other characters 
# should be unchanged.

# Example:

def swapcase(string)
  string.split.map(&:swapcase).join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
