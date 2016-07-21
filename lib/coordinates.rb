class Coordinates

  def self.translate(user_input)
    user_input.split.map do |space|
      coordinate_matcher[space]
    end
  end

  def self.coordinate_matcher
    {
      "A1" => [0,0],
      "A2" => [0,1],
      "A3" => [0,2],
      "A4" => [0,3],
      "B1" => [1,0],
      "B2" => [1,1],
      "B3" => [1,2],
      "B4" => [1,3],
      "C1" => [2,0],
      "C2" => [2,1],
      "C3" => [2,2],
      "C4" => [2,3],
      "D1" => [3,0],
      "D2" => [3,1],
      "D3" => [3,2],
      "D4" => [3,3]
    }
  end

  def self.random_coordinate_generator
    location = coordinate_matcher.keys.sample(2)
    translate(location)
  end

  def self.first_random_ship_coordinate
    random1 = [*0..3].sample
    random2 = [*0..3].sample
    first_ship_coordinate = [random1, random2]
  end

  def self.second_ship_space_x(first_ship_coordinate)
    second_ship_space_x = []
    new_space = []
    if first_ship_coordinate[0] == 0
      second_ship_y_space1[0] = 0 || second_ship_y_space1[0] = 1
    elsif first_ship_coordinate[0] == 1
      second_ship_y_space1[0] != 3
    elsif first_ship_coordinate[0] == 2
      second_ship_y_space1[0] != 0
    elsif first_ship_coordinate[0] == 3
      second_ship_y_space1[0] = 2 || second_ship_y_space1[0] = 3
    else
      second_ship_space_x << second_ship_y_space1[0]
    end
    new_space = [[first_ship_coordinate],[second_ship_space_x]]
  end

end
