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
    assert_equal "instructions", game.instructions
  end

  def test_it_shows_play_if_p_is_input
    game = Battleship.new
    input = "p"
    assert_equal "enter ship layout", game.play
  end

  def test_it_shows_quit_if_q_is_input
    game = Battleship.new
    input = "q"
    assert_equal "quit the game", game.quit
  end
end
