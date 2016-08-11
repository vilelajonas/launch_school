# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square 
# is the result of multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# Further Exploration

# What if we wanted generalize this method to a "power to the n" 
# type method: cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

def power_to_the(power, num)
  result = multiply(num, num)
  if power >=3
    (power - 2).times { result = result * num }
  end
  result
end

p power_to_the(3, 4)
