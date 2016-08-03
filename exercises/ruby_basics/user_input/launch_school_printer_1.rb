def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def differs_from_zero?(number_string)
  number_string != "0"
end
numerator = nil
denominator = nil
loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
end

loop do
  puts "Please enter the denominator:"
  denominator = gets.chomp
  if valid_number?(denominator)
    if differs_from_zero?(denominator)
      break
    else
      puts "Invalid input. A denominator of 0 is not allowed."
    end
  else
    puts "Invalid input. Only integers are allowed."
  end
end
result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
