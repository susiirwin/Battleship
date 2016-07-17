require './lib/ship'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @shots_fired = 0

  end

  def get_coordinates_size_two
    "What are the coordinates for your Size 2 Battleship: "
    size_two_coordinates = Boat.new(size, coordinates)
  end


end
