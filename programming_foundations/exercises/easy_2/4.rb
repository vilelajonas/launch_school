# Build a program that displays when the user will retire and how many years she 
# has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

time = Time.now 

puts "What's your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

retire_year = time.year + (retire_age - age)
puts "It's #{time.year}. You will retire in #{retire_year}."
puts "You have only #{retire_age - age} years of work to go!"
