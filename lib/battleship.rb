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
  "  I have laid out my ships on the grid.
  You now need to layout your two ships.
  The first is two units long and the
  second is three units long.
  The grid has A1 at the top left and D4 at the bottom right."

  end

  def get_starting_coordinates_two_ship
    puts "Enter the squares for the two-unit ship: "
    @starting_coordinates_two = gets.chomp
    "Thanks."
  end

  def get_starting_coordinates_three_ship
    puts "Enter the squares for the three-unit ship: "
    @starting_coordinates_three = gets.chomp
    "Thank you."
  end

  def fire
    puts "Enter the square you would like to fire upon: "
    @fire_coordinates = gets.chomp
    "Shot fired."
    #check with other grid and see if this space is empty or occupied
    #report back the result (H or M)
    #needs to store a record of all shots fired and count them
  end

  def draw_board #need to add labels here
    puts "==========="
    @board = Hash.new
    (1..4).each do |num|
      ("A".."D").each do |letter|
        @board["#{num}#{letter}"] = "- "
        print @board["#{num}#{letter}"]
      end
      puts
    end
    puts "==========="
  end

end

battleship = Battleship.new
puts battleship.greeting
while battleship.get_path != "q"
  if battleship.input == "i"
  puts battleship.instructions
elsif battleship.input == "p"
  puts battleship.play
  puts battleship.get_starting_coordinates_two_ship
  puts battleship.get_starting_coordinates_three_ship
  puts battleship.fire
  battleship.draw_board
  end
end
