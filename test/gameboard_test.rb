require './test/test_helper'
require './lib/gameboard'

class GameboardTest < Minitest::Test
  def test_it_creates_a_new_board
    game = Gameboard.new
    assert_equal nil, game.draw_board
  end

end
