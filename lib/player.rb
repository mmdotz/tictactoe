class Player
  def initialize
    @choice_array = []      #didn't need @choice here because we assigned it when first used
  end                       #because it started empty, it needed to be initialized

  def choose_b_position
    puts "What number on the board do you choose?"  # => nil
    @choice = gets.chomp.to_i
    @choice_array << @choice
  end
end

human = Player.new       # => #<Player:0x007ff8a894e938>
human.choose_b_position
