require './test/test_helper'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_does_the_user_get_greeted
    game = Battleship.new

    assert_equal "Welcome to BATTLESHIP", game.greeting
  end

  def test_it_asks_user_for_path_to_play
    game = Battleship.new

    expected = "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    assert_equal expected, game.path_choice
  end

  def test_it_starts_the_game_when_player_types_p
    skip
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

  def test_it_quits_the_when_player_types_q
    skip
  end

  def test_it_quits_the_when_player_types_quit
    skip
  end
end
