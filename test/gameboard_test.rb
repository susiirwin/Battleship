require './test/test_helper'
require './lib/gameboard'

class GameboardTest < Minitest::Test
  def test_it_creates_a_new_board
    board = Gameboard.new
    assert_equal nil, board.draw_board
  end

  def test_it_can_update_a_key_with_an_H
    board = Gameboard.new

    assert_equal "H", board.update_square
  end

end
