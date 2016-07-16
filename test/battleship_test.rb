require './test_helper'

class BattleshipTest < Minitest::test_helper
  def test_does_the_user_get_greeted
    game = Battleship.new
    assert_value "Welcome to BATTLESHIP", game.greeting
  end

end
