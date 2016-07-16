require './test/test_helper'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_it_greets_the_user_and_asks_for_a_play_path
    game = Battleship.new

    expected = "Welcome to BATTLESHIP\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

    assert_equal expected, game.greeting
  end

  def test_it_can_play
    game = Battleship.new

    assert_respond_to game, :play
  end

  def test_it_can_give_instructions
    game = Battleship.new

    assert_respond_to game, :instructions
  end
  
  def test_it_starts_the_game_when_player_types_p
    skip
    game = Battleship.new

    path_choice.answer = "p"

    assert_equal "you are playing the game", game.user_choice
  end


  def test_it_starts_the_game_when_player_types_play
    skip
  end

  def test_it_gets_ship_layout_from_user
    skip
  end

  def test_it_displays_instructions_when_player_types_i
    skip
  end

  def test_it_displays_instructions_when_player_types_instructions
    skip
  end

end
