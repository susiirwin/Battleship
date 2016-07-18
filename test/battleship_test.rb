require './test/test_helper'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_it_greets_the_user
    game = Battleship.new
    expected = "Welcome to BATTLESHIP"
    assert_equal expected, game.greeting
  end

  def test_it_can_get_input_and_store_it
    game = Battleship.new
    assert_equal "input", game.get_path
  end

  def test_it_shows_instructions_if_i_is_input
    game = Battleship.new
    input = "i"
    assert_equal "You have 2 ships. Place them. Hit Your Opponent's Ships. Sink them. Win the game.", game.instructions
  end

  def test_it_shows_play_if_p_is_input
    game = Battleship.new
    input = "p"

    expected = " I have laid out my ships on the grid.\n
      You now need to layout your two ships.\n
      The first is two units long and the\n
      second is three units long.\n
      The grid has A1 at the top left and D4 at the bottom right."
    assert_equal expected, game.play
  end

end
