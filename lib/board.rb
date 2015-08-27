class Board
  def initialize
    @board = [0,1,2,3,4,5,6,7,8]  # => [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end
end

Board.new  # => #<Board:0x007fa24402fc90 @board=[0, 1, 2, 3, 4, 5, 6, 7, 8]>

#write winning array[arrays] --  live here because they are subsets of board
#
