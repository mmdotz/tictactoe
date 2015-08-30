

class Player

  def initialize
    @choice_array = []    #didn't need @choice here because we assigned it when first used
  end

  def choice
    @choice                 #variables in class have this syntax: Class.variable, not just .variable
  end

  def build_choice_array
    @choice_array << @choice
  end

  def choice_array
    @choice_array
  end                       #because it started empty, it needed to be initialized

  def choose_b_position
    puts "What number on the board do you choose?"
    @choice = gets.chomp.to_i
  end

  def random_choice(arg)         #computer chooses number
    @random_choice
  end
end


class Board

  attr_reader :spaces, :outcome1, :outcome2, :outcome3, :outcome4, :outcome5, :outcome6, :outcome7, :outcome8  # => nil

  def initialize
    @spaces = [0,1,2,3,4,5,6,7,8]
    @outcome1 = [0,1,2]
    @outcome2 = [3,4,5]
    @outcome3 = [6,7,8]
    @outcome4 = [0,3,6]
    @outcome5 = [1,4,7]
    @outcome6 = [2,5,8]
    @outcome7 = [0,4,8]
    @outcome8 = [2,4,6]
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

    human = Player.new
    computer = Player.new
    board = Board.new         #created a new board to play on


    until human.choice_array.length == 4
    human.choose_b_position   #ask and get
      if board.spaces.include?(human.choice)
        human.build_choice_array
        board.spaces.delete(human.choice)
        puts "You have chosen #{human.choice_array} so far."
        computer.random_choice([board.spaces].sample)     #returning nil
        puts "Available spaces: #{board.spaces}"
        computer.build_choice_array
        board.spaces.delete(computer.choice)
        puts "Computer has taken a turn, choosing #{computer.choice_array}"

      else
        puts "Not a valid choice.  Pick only from available spaces :#{board.spaces}"
      end
    end


    #check against winning array
    if human.choice_array.include?(board.outcome1.inspect)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome2)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome3)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome4)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome5)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome6)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome7)
      puts "You won!"
    elsif
      human.choice_array.eql?(board.outcome8)
      puts "You won!"
    elsif
      puts "Try another number." # -- need DRAW code here --
      puts "Its a draw"
    else
      puts "You lose!"
    end
  end
end




