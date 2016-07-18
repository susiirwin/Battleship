require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_can_create_a_player_with_a_name
    player = Player.new("Susi")
    assert_equal "Susi", player.name
  end

  def test_it_can_ask_for_and_store_coordinates_for_size_2_ship
    player = Player.new("Susi")
    assert_equal "A1 A2", player.get_starting_coordinates_two_ship
  end

  def test_it_can_ask_for_and_store_coordinates_for_size_3_ship
    player = Player.new("Susi")
    assert_equal "A1 A2 A3", player.get_starting_coordinates_three_ship
  end
end
