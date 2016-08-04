require 'yaml'

LANGUAGE = 'pt'

MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(msg, lang='en')
  MESSAGES[lang][msg]
end

def prompt(msg_key)
  message = messages(msg_key, LANGUAGE)
  Kernel.puts(message)
end


def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

prompt('welcome')

prompt('get_num1')
num1 = Kernel.gets().chomp()

while !number?(num1)
  prompt('not_number')
  num1 = Kernel.gets().chomp()
end

prompt('get_num2')
num2 = Kernel.gets().chomp()

while !number?(num2)
  prompt('not_number')
  num2 = Kernel.gets().chomp()
end

valid_operators = ["+", "-", "/", "*"]
prompt('get_operator')
user_operator = Kernel.gets().chomp()

while !valid_operators.include?(user_operator)
  prompt('invalid_operator')
  user_operator = Kernel.gets().chomp()
end

def calculator(num1, num2, operator)
  num1 = num1.to_f
  num2 = num2.to_f
  if operator == "+"
    result = num1 + num2
  elsif operator == "-"
    result = num1 - num2
  elsif operator == "*"
    result = num1 * num2
  elsif operator == "/"
    result = num1 / num2
  end
  prompt('result')
  result
end

p calculator(num1, num2, user_operator)
