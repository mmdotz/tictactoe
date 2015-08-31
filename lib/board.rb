class Board

  attr_reader :board_display, :spaces, :outcome1, :outcome2, :outcome3, :outcome4, :outcome5, :outcome6, :outcome7, :outcome8  # => nil

  def initialize
    @spaces = [0,1,2,3,4,5,6,7,8]
    @static_spaces = [0,1,2,3,4,5,6,7,8]
    #refactor with arrays
    # @outcome1 = [0,1,2]
    # @outcome2 = [3,4,5]
    # @outcome3 = [6,7,8]
    # @outcome4 = [0,3,6]
    # @outcome5 = [1,4,7]
    # @outcome6 = [2,5,8]
    # @outcome7 = [0,4,8]
    # @outcome8 = [2,4,6]
  end

#this is the shadow board created to show user
  def static_spaces(x)
    @static_spaces = x
  end

#static because our other board's spaces delete when chosen
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
