p "Write a number between 0 and 100"

number = gets.chomp.to_i

if number >= 0 and number<= 50
  p "the number is between 0 and 50"
elsif number >= 51 and number <= 100
  p "the number is between 51 and 100"
else
  p "the number is above 100"
end
