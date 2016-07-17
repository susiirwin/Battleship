class Ship
  attr_reader :size,
              :coordinates

  def initialize(size, coordinates)
    @size = size
    @coordinates = coordinates
  end

end
