class Ship
  attr_reader :size,
              :battleship

  def initialize(size)
    @size = size
    @battleship = "S" * @size
  end

  def get_shot
    @battleship.sub!("S", "H")
  end

  def damaged?
    @battleship.include?("H")
  end

  def sunk?
    !@battleship.include?("S")
  end
end
