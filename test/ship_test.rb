require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_it_creates_small_ship
    small = Ship.new(2)

    assert_equal 2, small.size
  end

  def test_it_can_be_bigger_than_2
    large = Ship.new(3)

    assert_equal 3, large.size
  end

  def test_it_makes_a_bigger_ship
    large = Ship.new(8)

    assert_equal "SSSSSSSS", large.battleship
  end

  def test_it_can_take_a_hit
    small = Ship.new(2)

    assert_respond_to small, :get_shot
  end

  def test_it_knows_it_is_damaged
    large = Ship.new(6)

    assert_equal false, large.damaged?
  end

  def test_ship_visualization_changes_when_shot
    small = Ship.new(2)

    assert_equal "HS", small.get_shot
    assert_equal "HH", small.get_shot
  end

  def test_it_knows_it_got_shot
    large = Ship.new(6)

    assert_equal false, large.damaged?

    large.get_shot
    assert_equal true, large.damaged?
  end

  def test_ship_knows_if_it_is_dead
    large = Ship.new(2)

    assert_equal false, large.sunk?
    large.get_shot
    large.get_shot
    assert_equal true, large.sunk?
    assert_equal "HH", large.battleship
  end
end
