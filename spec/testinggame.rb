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
  def initialize
    @spaces = [0,1,2,3,4,5,6,7,8]
  end

  def winning_arrays


  def spaces
    @spaces
  end

end


#write winning array[arrays] --  live here because they are subsets of board

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

  end
  #check against winning array
end




