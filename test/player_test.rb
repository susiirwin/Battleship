require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_creates_a_new_player_with_a_name
    player = Player.new("Adam")

    assert_equal "Adam", player.name
  end

  def test_it_can_retrieve_a_coordinate
    player = Player.new("Adam")
    user_input = "A1"

    assert_equal "A1", player.get_coordinates
  end

  def test_it_can_retrieve_a_different_coordinate
    player = Player.new("Adam")
    user_input = "A2"

    assert_equal "A2", player.get_coordinates
  end
end
