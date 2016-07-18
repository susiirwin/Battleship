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
    "You have 2 ships. Place them. Hit Your Opponent's Ships. Win the game."
  end

  def play
  "  I have laid out my ships on the grid.
  You now need to layout your two ships.
  The first is two units long and the
  second is three units long.
  The grid has A1 at the top left and D4 at the bottom right."
  end

end

battleship = Battleship.new
puts battleship.greeting
while battleship.get_path != "q"
  if battleship.input == "i"
  puts battleship.instructions
elsif battleship.input == "p"
  puts battleship.play
  end
end
