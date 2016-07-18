class Player
  attr_reader :name,
              :starting_coordinates_two,
              :starting_coordinates_three

  def initialize(name)
    @name = name

  end

  def get_starting_coordinates_two_ship
    puts "Enter the squares for the two-unit ship: "
    @starting_coordinates_two = gets.chomp
    @starting_coordinates_two
  end

  def get_starting_coordinates_three_ship
    puts "Enter the squares for the three-unit ship: "
    @starting_coordinates_three = gets.chomp
    @starting_coordinates_three
  end
end
