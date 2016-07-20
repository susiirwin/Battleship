class GameBoard
  attr_reader :gameboard

  def initialize(size = 4)
    @size = size
    @gameboard = generate_gameboard
    @stored_shots = []
  end

  def generate_line
    @size.times.map do
      " "
    end
  end

  def generate_gameboard
    @size.times.map do
      generate_line
    end
  end

  def add_line_breaks_to_board
    board_array = []
    @gameboard.each do |line_array|
      board_array << line_array.join(" ")
      board_array << "\n"
    end
    board_array.join('')
  end

  def record_shot(y,x)
    if valid_shot?(y,x)
      mark_shot_on_board(y,x)
    else
      "You have already hit this spot!"
    end
  end

  def mark_shot_on_board(y,x)
    @gameboard[y][x] = "M"
    @stored_shots << [y,x]
    [y,x]
  end

  def valid_shot?(y,x)
    @stored_shots.none? do |coordinate|
      coordinate[0] == y && coordinate[1] == x
    end
  end

end

puts GameBoard.new.add_line_breaks_to_board
