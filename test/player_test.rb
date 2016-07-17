require './test/test_helper'
require './lib/player'
require './lib/ship'

class PlayerTest < Minitest::Test
    def test_it_can_create_a_name_player_with_a_name
    player = Player.new("Susi")

    assert_equal "Susi", player.name
  end

  def test_it_can_create_a_size_2_ship
    player = Player.new("Susi")
    small_ship = Ship.new(2, "A1 B1")

    assert_equal 2, small_ship.size
  end

  def test_it_can_create_a_size_3_ship
    player = Player.new("Susi")
    large_ship = Ship.new(3, "D4 D3 D2")

    assert_equal 3, large_ship.size
  end

  def test_it_can_increase_the_number_of_shots_fired
    skip
  end

  def test_it_can_store_the_shots_fired
    skip

  end

  def test_it_can_tell_the_player_if_player_won
    skip

  end

  def test_it_can_tell_the_player_if_player_lost
    skip

  end
end
