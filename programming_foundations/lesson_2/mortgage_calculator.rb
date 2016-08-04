require 'yaml'
require 'pry'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('mortgage_calculator_msgs.yml')

def prompt(key_msg)
  puts MESSAGES[LANGUAGE][key_msg]
end

def proceed?
  gets.chomp.downcase.include?('y')
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

def validate_duration(input)
  integer?(input) && input.to_i > 0 && input.to_i <= 60
end

prompt 'welcome'
prompt 'init_info'
prompt 'proceed'
if proceed?
  loop do
    prompt 'get_loan_amount'
    loan_amount = gets.chomp
    unless number?(loan_amount)
      prompt 'not_number'
      loan_amount = gets.chomp
    end
    prompt 'get_interest_rate'
    interest_rate = gets.chomp
    unless number?(interest_rate) && interest_rate.to_f > 0
      prompt 'invalid_interest_rate'
      interest_rate = gets.chomp
    end
    binding.pry
    prompt 'get_loan_duration'
    years = gets.chomp
    until validate_duration(years)
      prompt 'loan_duration_error'
      years = gets.chomp
    end

    annual_interest_rate = interest_rate.to_f / 100

    monthly_interest_rate = annual_interest_rate / 12

    months = years.to_i * 12

    monthly_payment = loan_amount.to_f * (monthly_interest_rate /
                      (1 - (1 + monthly_interest_rate)**-months.to_i))

    prompt 'result'
    p format('%.2f', monthly_payment)
    p "----------------------------"
    prompt 'another_calculation'

    break unless proceed?
  end
end
prompt 'goodbye'
