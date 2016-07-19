class Gameboard
  attr_reader :positions,
              :coordinate_for_two_ship,
              :coordinate_for_three_ship

      ROWS = [1,2,3,4]
      COLUMNS = ["A", "B", "C", "D"]

  def initialize
    @positions = [["A1", "A2", "A3", "A4"],
                  ["B1", "B2", "B3", "B4"],
                  ["C1", "C2", "C3", "C4"],
                  ["D1", "D2", "D3", "D4"]]

    # valdation ideas:
    #grab index of array and call that index in next row
    #increase in row by 1 - that is the first position over
    #game boundaries based on numbers of rows and number of columns
  end

  def get_random_start_position
    starting_row = (ROWS.count * rand).to_i
    starting_column = (COLUMNS.count * rand).to_i

    @coordinates = [[starting_row],[starting_column]] # => [[0],[3]]
    #not sure the above line does what i need -
    #convert the positions to the space in the array name
    # so [[3],[3]] becomes "D4"; [[1], [2]] becomes B3
    flattened_coordinates = @coordinates.flatten # => [0,3]
    flattened_coordinates =
    @positions.fetch(@coordinates)

    #pick a point, find the directions to go in to follow rulesa
    #if my point is A2 i can either go one spot left, one spot right or one spot down. I can
    # increase my array position by 1 and get to A3. I can decrease my position by 1 and go to A1.
    # I can somehow get to B2 - and that would be a different array but the same position within the array.



    # @coordinate_for_two_ship = positions.sample(2).sort
    # @coordinate_for_two_ship
    # coordinates = [position.sample]
    # if down
    #   coordinates << add_one_to_start(coordinates[0])

  end

  def get_random_three_positions
    @coordinate_for_three_ship = positions.sample(3).sort
    @coordinate_for_three_ship
  end
end
