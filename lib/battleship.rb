class Battleship
  def greeting
    "Welcome to BATTLESHIP"
  end

  def get_path
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp
  end

  def instructions
    input = "i"
    "instructions"
  end

  def play
    input = "p"
    "enter ship layout"
  end

  def quit
    input = "q"
    "quit the game"
  end
end
