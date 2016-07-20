require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_it_can_generate_first_random_unit
    computer = Computer.new
    ship_coordinate = computer.generate_first_unit
    letter_options = ["A", "B", "C", "D"]
    number_options = ["1", "2", "3", "4"]
    # assuming it looks something like..."A1"
    assert letter_options.include?(ship_unit[0])
    assert number_options.include?(ship_unit[1])
  end

  def test_it_can_make_a_valid_second_guess
    skip
    first_unit = "B2"

    ship_unit = computer.generate_second_unit(first_unit)
    
  end

end
