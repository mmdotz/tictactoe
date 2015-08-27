require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

class Game
  until human.choice_array.length == 3
    human.choose_b_position
    #@board.delete!(@choice) #bang needed?
    #player.choice_array.length
  #end not needed?

  #check against winning array

end


#until choice_array.length = 3
