require './test/test_helper'
require './lib/coordinates'

class CoordinatesTest < Minitest::Test
  def test_it_can_retrieve_coordinates_for_one_coordinate
    user_input = "A1"

    ship_location = Coordinates.translate("A1")

    assert_equal [[0,0]], ship_location
  end

  def test_it_can_retrieve_coordinates_for_two_coordinates
    user_input = "A1 A2"

    ship_location = Coordinates.translate("A1 A2")

    assert_equal [[0,0],[0,1]], ship_location
  end
end
