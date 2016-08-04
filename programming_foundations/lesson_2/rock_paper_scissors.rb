VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def construct_choice(user_input)
  VALID_CHOICES.each do |valid_choice|
    return valid_choice if valid_choice.start_with?(user_input)
  end
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock')
end


def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt('It\'s a tie!')
  end
end

loop do
  player_score = 0
  computer_score = 0
  until player_score == 5 || computer_score == 5
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      user_input = Kernel.gets.chomp.downcase

      choice = construct_choice(user_input)
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt('That\'s not a valid choice.')
      end
    end

    computer_choice = VALID_CHOICES.sample
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    display_results(choice, computer_choice)
    
    player_score += 1 if win?(choice, computer_choice)
    computer_score += 1 if win?(computer_choice, choice)
    prompt("SCORE -> YOU #{player_score} x #{computer_score} COMPUTER")
  end
  prompt('----------------------------------------------------')
  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye!')
