require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test
  def test_it_can_create_an_empty_hash
    computer = Computer.new
    assert_equal({}, computer.ship_place)
  end

  def test_it_can_add_to_the_hash
    computer = Computer.new
    assert_equal( , )
  end
end
