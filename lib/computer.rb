class Computer
  attr_reader :ship_place

  def initialize
    @ship_place = Hash.new
  end

  def place_2_ship_horizontally
    puts "What are you two coordinates? >"
    coordinates = gets.chomp.chars
    @ship_place[1] = coordinates[0]


  end


end
