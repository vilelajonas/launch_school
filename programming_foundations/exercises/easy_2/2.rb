# Build a program that asks a user for the length and width of a 
# room in meters and then displays the area of the room in both 
# square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Enter the length of the room in meters:"
length_meters = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_meters = gets.chomp.to_f

METERS_TO_FEET = 10.7639
area_meters = (length_meters * width_meters).round(2)
area_feet = (area_meters * METERS_TO_FEET).round(2)

puts "The area of the room is #{area_meters} square meters\
 (#{area_feet} square feet)."

puts "----------------------------------------------------------"
puts "Enter the length of the room in feet:"
length_feet = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width_feet = gets.chomp.to_f

FEET_TO_INCHES = 12
FEET_TO_CENTIMETERS = 30.48

 area_feet = (length_feet * width_feet).round(2)
 area_inches = (area_feet * FEET_TO_INCHES).round(2)
 area_centimeters = (area_feet * FEET_TO_CENTIMETERS).round(2)

 puts "The area of the room is #{area_feet} square feet\
  (#{area_inches} square inches and (#{area_centimeters} square centimeters))."
