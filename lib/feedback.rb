class Feedback

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
