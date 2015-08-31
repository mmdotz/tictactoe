#boardspacestried.rb

def random_choice(x)               #syntax error
    @random_choice([board.spaces])
  end

def random_choice(x)
    @random_choice(board.spaces)
end

def random_choice(x)
    @random_choice([board.spaces].sample)
end


do not pass in board spaces in Player, only in Game

def random_choice()
  @random_choice = random_choice
end


  def random_choice(x)           #stack too deep
    @random_choice = random_choice(x)
  end

  def random_choice(x)
    @random_choice = random_choice
  end
