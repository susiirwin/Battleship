require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test
  def test_it_can_place_a_ship
    computer = Computer.new

    assert_equal "ship placed", computer.place_ship
  end

  def test_it_places_ship_randomly
    computer = Computer.new

    assert_equal "random", computer.place_randomly
  end
end
