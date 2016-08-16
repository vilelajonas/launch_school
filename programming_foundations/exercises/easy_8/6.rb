# fizzbuzz

# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers between the two 
# numbers, except if a number is divisible by 3, print "Fizz", if a number is 
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
# print "FizzBuzz".

# Example:

def fizzbuzz(num1, num2)
  result = []
  num1.upto(num2) do |n|
    if n % 3 == 0 && n % 5 == 0
      result << 'FizzBuzz'
    elsif n % 5 == 0
      result << 'Buzz'
    elsif n % 3 == 0
      result << 'Fizz'
    else
      result << n.to_s
    end
  end
  p result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz