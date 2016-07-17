
class Battleship
  def greeting
    "Welcome to BATTLESHIP\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play
    #needs to load Play method from Boardgame Class
  end

  def instructions
    #needs to load file 'instructions.txt and print them to the screen'
    #also needs to include the Battleship.greeting
  end

end



# This section runs the game from the terminal command:
# game = Battleship.new
# if play
# => go run play
# elsif instructions
# => show the instructions file
# else
#   return
# end
