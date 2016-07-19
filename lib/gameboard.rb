class Gameboard
  attr_reader :board

  def initalize
    @board
    @shots


  end

  def draw_board #need to add labels here
    puts "==========="
    @board = Hash.new
    (1..4).each do |num|
      ("A".."D").each do |letter|
        @board["#{num}#{letter}"] = "- "
        print @board["#{num}#{letter}"]
      end
      puts
    end
    puts "==========="
  end

  # Positions in a hash written out
  # def positions
    # {"A1"=>"*", "A2"=>"*", "A3"=>"*", "A4"=>"*",
    #  "B1"=>"*", "B2"=>"*", "B3"=>"*", "B4"=>"*",
    #  "C1"=>"*", "C2"=>"*", "C3"=>"*", "C4"=>"*",
    #  "D1"=>"*", "D2"=>"*", "D3"=>"*", "D4"=>"*"}
  # end

  def update_square
    #needs to get input from plyer.shot and change the square to H or N
    # if boat is there, show an H
    # else, put an M
    "H"
  end
end
