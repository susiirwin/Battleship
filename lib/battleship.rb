require './lib/gameboard'


class Battleship
  # include Feedback
  attr_reader :input

  def get_path
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    @input = gets.chomp
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
board = GameBoard.new


puts battleship.greeting
while battleship.get_path != "q"
  if battleship.input == "i"
  puts battleship.instructions
elsif battleship.input == "p"
  puts battleship.play
  puts player.get_starting_coordinates_two_ship
  puts player.get_starting_coordinates_three_ship

  battleship.fire



  end
end
