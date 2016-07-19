require './test/test_helper'
require './lib/gameboard'

class GameboardTest < Minitest::Test

  def test_it_has_positions
    board = Gameboard.new
    expected = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4"]

    assert_equal expected, board.positions
  end

  

end
