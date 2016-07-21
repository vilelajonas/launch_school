p "Say something:"

first_input = gets.chomp
p first_input


second_input = ""
while second_input != "STOP"
  p "Say something else:"
  second_input = gets.chomp 
end

p "you did it!"

