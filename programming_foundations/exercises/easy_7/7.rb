# Multiplicative Average

# Write a method that takes an Array of integers as input, multiplies all of 
# the numbers together, divides the result by the number of entries in the Array, 
# and then prints the result rounded to 3 decimal places.

# Examples

def show_multiplicative_average(array)
  result = array.inject(:*)
  #devide result / array.size
  result = result.to_f / array.size
  #print 'The result is ... round(3)'
  result = format('%.3f', result)
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667