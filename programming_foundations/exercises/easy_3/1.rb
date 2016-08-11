# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongs the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i
puts "==> Enter the 3rd number:"
num3 = gets.chomp.to_i
puts "==> Enter the 4th number:"
num4 = gets.chomp.to_i
puts "==> Enter the 5th number:"
num5 = gets.chomp.to_i
puts "==> Enter the 6th number:"
num6 = gets.chomp.to_i

numbers = [num1, num2, num3, num4, num5]
condicional = numbers.include?(num6) ? 'appears' : 'does not appear'

puts "The number #{num6} #{condicional} in #{numbers}."
