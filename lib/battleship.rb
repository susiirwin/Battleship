
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

  def feedback_player_setup
    "I have laid out my ships on the grid.\n
    You now need to layout your two ships.\n
    The first is two units long and the\n
    second is three units long.\n
    The grid has A1 at the top left and D4 at the bottom right.\n\n

    Enter the squares for the two-unit ship:"

  end

  def feedback_shot_miss
    "You have not hit any of your oppoent's ships at #{coordinates}."
  end

  def feedback_shot_hit
    "You have hit an enemy ship at #{coordinates}!"
  end

  def feedback_shot_sunk
    "You have sunk an enemy ship at #{coordinates}! It was a #{size} ship."
  end

  def feedback_loss
    "Sorry #{player_name}... you have lost Battleship. Your opponenet used #{shot_count} shots to sink your Battleships in #{total_time_played}."
  end

  def feedback_win
    "Congratulations #{player_name}! You have won Battleship! You had #{shots_fired} shots and played for #{total_time_played}. Well Done!"
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
