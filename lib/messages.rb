class Messages

  def greeting
    puts "Welcome to BATTLESHIP!\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit? >"
  end

  def instructions
    puts "Prepare For Battle\n\nThe computer will place ships and then you will be prompted to place ships. Select the start and end coordinates you wish the ship to occupy.\nRules for placing ships:\nPlace each ship in any horizontal or vertical position, but not diagonally.\nDo not place a ship that any part of it overlaps letters, numbers, the edge of the grid, or another ship.\nHow to Play\n\nOn your turn pick a target space to attack and enter its location by letter and number.\nIf you pick a space occupied by a ship on your opponent's ocean grid, your shot is a hit!\n\nIt's a Miss!\nIf you pick a space that is not occupied by a ship on your opponent's ocean grid, it is a miss.\nAfter a hit or miss, your turn is over.\nPlay continues in this manner, with you and your opponent picking spaces one shot per turn.\n\nSinking a Ship\nOnce all the spaces any one ship occupies have been attacked, it has been sunk.\n\nWinning the Game\nIf you are the first player to sink all of your opponents ships, you win the game!\n\nWould you like to (p)lay or (q)uit? >"
  end

  def error
    puts "You screwed up - that is not a valid option!\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit? >"
  end

  def quit
    puts "Thanks for playing!"
  end

  def computer_play
    puts "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right."
  end

  def missed_shot_message
    "You have not hit any ship at coordinates."
  end

  def hit_shot_message
    "You have hit an enemy ship at coordinates!"
  end

  def sunk_ship_message
    "You have sunk an enemy shot at coordinates!"
  end

  def loss_game_message
    "Sorry player.name... you have lost Battleship. Your opponent used shot_count shots to sink your battleships in time_elapsed."
  end

  def won_game_message
    "Congratulations player.name! You have won Battleship! You took shot_count shots and played for time_elapsed."
  end

end
