

def which_number_if(number)
  if number >= 0 and number<= 50
    p "the number is between 0 and 50"
  elsif number >= 51 and number <= 100
    p "the number is between 51 and 100"
  else
    p "the number is above 100"
  end
end

def which_number_case(number)
  case 
  when number <= 0
    p "The number is less than 0"
  when number <=50 
    p "The number is between 0 and 50"
  when number <= 100
    p "The number is between 51 and 100"
  else
    p "The number is grater than 100"      
  end
end

p "Write a number between 0 and 100"
number = gets.chomp.to_i

which_number_if(number)
which_number_case(number)