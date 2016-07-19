class Computer
  attr_reader :ship_place

  def initialize
    @ship_place = Hash.new
  end

  def place_ship
    ship_1[]
  end

  def place_randomly
    "random"
  end
end
