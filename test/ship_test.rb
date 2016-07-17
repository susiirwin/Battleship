require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_it_can_make_a_size_2_ship
    small_ship = Ship.new(2, "A1 A2")

    assert_equal 2, small_ship.size
  end

  def test_it_can_make_a_size_3_ship
    large_ship = Ship.new(3, "A1 A2 A3")

    assert_equal 3, large_ship.size
  end

  def test_it_can_store_starting_coordinates_for_small_ship
    small_ship = Ship.new(2, "A1 A2")

    assert_equal "A1 A2", small_ship.coordinates
  end

  
end
