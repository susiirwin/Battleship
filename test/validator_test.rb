require './test/test_helper'
require './lib/validator'

class ValidatorTest < Minitest::Test
  def test_coordinates_are_a_string

    .is_string?
  end

  def test_coordinates_are_not_in_use

    .is_used?
  end

  def test_coordinates_are_next_to_each_other

    .is_neighbor?
  end

end

# rules:
# 1. Ships cannot wrap around the board
# 2. Ships cannot overlap
# 3. Ships can be laid either Horizonally or Vertically
# 4. Coordinates must correspond to the first and last
# units of the ship. (IE you can't place a two unit ship at A1A3)
