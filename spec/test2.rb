# You are correct except you aren't using the X that you are passing in.

# Justin Herrick [10:46 AM]
# @random_choice by itself is simply telling Ruby to give you the value of it. Which is always nil unless you set it previously.

# Justin Herrick [10:47 AM]
# def random_choice(x)
#  @random_choice = x
# end

# That will assign random choice to whatever you send it in the game class.

# Justin Herrick [10:48 AM]
# Which sounds like you want to call that method like this

# computer.random_choice(board.spaces.sample)

# Justin Herrick [10:48 AM]
# Which will set the random choice to a random space from the board
