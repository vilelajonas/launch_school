# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

puts ">> Please enter an integer greater than 0:"
num1 = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp.downcase

operator.include?('s') ? operator = 'sum' : operator = 'product'
result = ''

if operator == 'sum'
  result = (1..num1).to_a.inject(:+)
else
  result = (1..num1).to_a.inject(:*)
end

puts "The #{operator} of the integers between 1 and #{num1.to_s} is #{result}."
