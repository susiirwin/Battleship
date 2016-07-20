class Processor
  include Feedback
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
