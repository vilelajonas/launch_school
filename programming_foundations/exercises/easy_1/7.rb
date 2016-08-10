# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.


##### my code ##### 
# def stringy(int)
#   string = ''
#   while string.length < int
#     string << '1'
#     string << '0' if string.length <= int
#   end
#   string.chop! if int.odd?
#   string
# end


def stringy(size, starter=1)
  numbers = []

  size.times do |index|
    number = index.even? ? starter : (starter == 1 ? 0 : 1)
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
