require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WHO_START_TO_PLAY = 'choose'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def display_score(player, computer)
  prompt "PLAYER #{player} x #{computer} COMPUTER."
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player, computer)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
  display_score(player, computer)
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, separator=', ', last_word='or')
  array[-1] = "#{last_word} #{array.last}" if array.size > 1
  array.size == 2 ? array.join(' ') : array.join(separator)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def good_choice(brd, marker)
  computer_marks = brd.map { |k, v| k if v == marker }.compact
  WINNING_LINES.each do |line|
    possible_choices = line - computer_marks
    if possible_choices.size == 1 &&
       brd[possible_choices.first] == INITIAL_MARKER
      return possible_choices.first
    end
  end
  nil
end

def computer_places_piece!(brd)
  square = ''
  if !!good_choice(brd, COMPUTER_MARKER)
    square = good_choice(brd, COMPUTER_MARKER)
  elsif !!good_choice(brd, PLAYER_MARKER)
    square = good_choice(brd, PLAYER_MARKER)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def alternate_player(current_player)
  current_player == 'computer' ? 'player' : 'computer'
end

loop do
  player_score = 0
  computer_score = 0

  until player_score == 2 || computer_score == 2
    if WHO_START_TO_PLAY == 'choose'
      prompt "Who starts to play? (player, computer)"
      answer = gets.chomp.downcase

      if answer.start_with?('p')
        current_player = 'player'
      else
        current_player = 'computer'
      end
      prompt "#{current_player} starts!"
      sleep(2)
    end

    board = initialize_board

    loop do
      display_board(board, player_score, computer_score)
      # I did not use the place_piece! method as sugested because
      # it was easier to use eval.
      eval("#{current_player}_places_piece!(board)")
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      player_score += 1 if detect_winner(board) == 'Player'
      computer_score += 1 if detect_winner(board) == 'Computer'
      display_board(board, player_score, computer_score)
      prompt "#{detect_winner(board)} won!"
    else
      display_board(board, player_score, computer_score)
      prompt "It's a tie!"
    end
    sleep(2)
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
