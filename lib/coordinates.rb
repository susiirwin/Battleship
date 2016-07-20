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
      "A4" => [0,3]
    }
  end

end
