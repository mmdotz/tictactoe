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
