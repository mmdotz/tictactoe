
# human_play = Game.new
# human_play.run_game


class Player

  attr_reader :choice_array, :choice, :print_X, :build_computer_choice_array


  def initialize
    @choice_array = []    #didn't need @choice here because we assigned it when first used
    @win = false
  end

#human choice array
  def build_choice_array
    @choice_array << @choice
  end

  def build_computer_choice_array
    @choice_array << @random_choice
  end

  def choose_b_position
    puts "Please choose a number:"
    @choice = gets.chomp.to_i
  end

#pass in board.spaces.sample only once
  def computer_choice(x)
    @random_choice = x
    #choice = computer.random_choice
  end

  def random_choice
    @random_choice
  end

  def win
    @win
  end

#check for winner
  def check_win_horiz
    if
      @choice_array.include?(0)&&
      @choice_array.include?(1)&&
      @choice_array.include?(2)||
      @choice_array.include?(3)&&
      @choice_array.include?(4)&&
      @choice_array.include?(5)||
      @choice_array.include?(6)&&
      @choice_array.include?(7)&&
      @choice_array.include?(8)
      @win = true
    end
  end

  def check_win_vert
    if
      @choice_array.include?(0)&&
      @choice_array.include?(3)&&
      @choice_array.include?(6)||
      @choice_array.include?(1)&&
      @choice_array.include?(4)&&
      @choice_array.include?(7)||
      @choice_array.include?(2)&&
      @choice_array.include?(5)&&
      @choice_array.include?(8)
      @win = true
    end
  end

  def check_win_diag
    if
      @choice_array.include?(0)&&
      @choice_array.include?(4)&&
      @choice_array.include?(8)||
      @choice_array.include?(2)&&
      @choice_array.include?(4)&&
      @choice_array.include?(6)
      @win = true
    end
  end
end


class Board

  attr_reader :board_display, :spaces, :outcome1, :outcome2, :outcome3, :outcome4, :outcome5, :outcome6, :outcome7, :outcome8  # => nil

  def initialize
    @spaces = [0,1,2,3,4,5,6,7,8]
    @static_spaces = [0,1,2,3,4,5,6,7,8]
#keep for refactor?
    # @outcome1 = [0,1,2]
    # @outcome2 = [3,4,5]
    # @outcome3 = [6,7,8]
    # @outcome4 = [0,3,6]
    # @outcome5 = [1,4,7]
    # @outcome6 = [2,5,8]
    # @outcome7 = [0,4,8]
    # @outcome8 = [2,4,6]
  end

  def static_spaces(x)
    @static_spaces = x
  end

  def static_spaces
    @static_spaces
  end


  def board_display   #credit ryan yep
    puts "------------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@static_spaces[0]}       |        #{@static_spaces[1]}       |       #{@static_spaces[2]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@static_spaces[3]}       |        #{@static_spaces[4]}       |       #{@static_spaces[5]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts "|      #{@static_spaces[6]}       |        #{@static_spaces[7]}       |       #{@static_spaces[8]}      |"
    puts "|              |                |              |"
    puts "|              |                |              |"
    puts  "-----------------------------------------------"
  end



end

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

#create players
    human = Player.new
    computer = Player.new
#create new board
    board = Board.new


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
        puts "Human choices: #{human.choice_array}."      #show choices
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




