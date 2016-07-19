require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test
  def test_it_can_create_an_empty_hash
    computer = Computer.new
    assert_equal({}, computer.ship_place)
  end

  def test_it_can_add_coordinates_to_the_hash
    computer = Computer.new

    coordinates = "A1"
    assert_equal({1 => "A1", 2 => "A2"} , computer.place_2_ship_horizontally)
  end
end
