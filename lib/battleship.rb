require './lib/gameboard'
require './lib/player'

class Battleship
  attr_reader :input

  def greeting
    "Welcome to BATTLESHIP"
  end

  def get_path
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    @input = gets.chomp
  end

  def instructions
    "You have 2 ships. Place them. Hit Your Opponent's Ships. Sink them. Win the game."
  end

  def play
    "      I have laid out my ships on the grid.
      You now need to layout your two ships.
      The first is two units long and the
      second is three units long.
      The grid has A1 at the top left and D4 at the bottom right."
  end

  def fire
    puts "Enter the square you would like to fire upon: "
    @fire_coordinates = gets.chomp
    puts "Shot fired!"
    #check with other grid and see if this space is empty or occupied
    #report back the result (H or M)
    #needs to store a record of all shots fired and count them
  end
end

battleship = Battleship.new
board = Gameboard.new
player = Player.new("Susi")
puts battleship.greeting
while battleship.get_path != "q"
  if battleship.input == "i"
  puts battleship.instructions
elsif battleship.input == "p"
  puts battleship.play
  puts player.get_starting_coordinates_two_ship
  puts player.get_starting_coordinates_three_ship

  battleship.fire
  
  board.draw_board

  end
end
