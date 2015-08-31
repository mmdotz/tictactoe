# require_relative '../lib/player.rb'
# require_relative '../lib/board.rb'

require 'player'
require 'board'


class Game

  def run_game

    #def decide_players throws an error because can't instatiate new players inside method?

    # def decide_players
    #   puts "Do you want to play [P]layer vs. Computer OR [C]omputer vs. Computer?"
    #   game_type = gets.chomp.upcase
    #   if game_type == "C"     #create 2 computer players
    #     computer_1 = Player.new
    #     computer_2 = Player.new
    #   elsif game_type == "P"   #create human and computer players
    #     human = Player.new
    #     computer_1 = Player.new
    #   else
    #    puts "Please choose only C or P"
    #   end
    # end

    human = Player.new                      #create player
    computer = Player.new
    board = Board.new                       #created a new board to play on

    #fix this
    until human.choice_array.length == 4
    human.choose_b_position                 #ask and gets
      if board.spaces.include?(human.choice)
        human.build_choice_array
        board.spaces.delete(human.choice)
    #print X to board
        board.static_spaces.each { |n|
            board.static_spaces[human.choice] = "X"
          }

    #computer's turn

        computer.computer_choice(board.spaces.sample)
        computer.build_computer_choice_array
        board.spaces.delete(computer.random_choice)
        board.static_spaces.each { |n|
            board.static_spaces[computer.random_choice] = "O"
          }
    #show choices made
        puts "Human choices: #{human.choice_array}."
        puts "Computer's choices: #{computer.choice_array}."
        puts "Available spaces #{board.spaces}"

        board.board_display
      else
        puts "Not a valid choice.  Pick only from available spaces :#{board.spaces}."
      end
    end

    if
      human.check_win_diag == true
      puts "You win!"
    elsif
      computer.check_win_diag == true
      puts "Computer wins!"
    elsif
      human.check_win_vert == true
      puts "You win!"
    elsif
      computer.check_win_vert == true
      puts "Computer wins!"
    elsif
      human.check_win_horiz == true
      puts "You win!"
    elsif
    computer.check_win_horiz == true
      puts "Computer wins!"
    else
      "Draw!"
    end

  end
end



