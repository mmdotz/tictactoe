class Player
  def initialize
    @choice_array = []      #didn't need @choice here because we assigned it when first used
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
end


class Board

  attr_reader :spaces, :outcome1, :outcome2, :outcome3, :outcome4, :outcome5, :outcome6, :outcome7, :outcome8

  def initialize
    @spaces = [0,1,2,3,4,5,6,7,8]
    @outcome1 = [0,1,2]
    @outcome2 = [3,4,5]       #board.outcome2
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

    human = Player.new        #made a new player
    board = Board.new         #created a new board to play on

    until human.choice_array.length == 3
    human.choose_b_position   #ask and get
      if board.spaces.include?(human.choice)
        human.build_choice_array
        board.spaces.delete(human.choice)
      else
        puts "Not a valid choice.  Pick only from available spaces :#{board.spaces}"
      end
    end

    #human.choice_array.length
    print "You have chosen : #{human.choice_array}"

    #check against winning array
    if human.choice_array.eql?(board.outcome1)
      puts " you won!"
    elsif
      human.choice_array.eql?(board.outcome2)
    elsif
      human.choice_array.eql?(board.outcome3)
    elsif
      human.choice_array.eql?(board.outcome4)
    elsif
      human.choice_array.eql?(board.outcome5)
    elsif
      human.choice_array.eql?(board.outcome6)
    elsif
      human.choice_array.eql?(board.outcome7)
    elsif
      human.choice_array.eql?(board.outcome8)
    else
      puts "You lose!"
    end
  end
end




