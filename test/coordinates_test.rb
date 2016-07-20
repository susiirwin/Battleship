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

  def test_it_can_retrieve_coordinates_for_another_two_coordinates
    user_input = "D3 D4"

    ship_location = Coordinates.translate("D3 D4")

    assert_equal [[3,2],[3,3]], ship_location
  end

  def test_it_can_retrieve_coordinates_for_three_coordinates
    user_input = "D2 D3 D4"

    ship_location = Coordinates.translate("D2 D3 D4")

    assert_equal [[3,1],[3,2],[3,3]], ship_location
  end

  def test_it_can_retrieve_coordinates_for_another_three_coordinates
    user_input = "A1 B1 C1"

    ship_location = Coordinates.translate("A1 B1 C1")

    assert_equal [[0,0],[1,0],[2,0]], ship_location
  end

end
