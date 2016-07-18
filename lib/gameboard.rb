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
  # {"a1"=>"*", "a2"=>"*", "a3"=>"*", "a4"=>"*",
  #  "b1"=>"*", "b2"=>"*", "b3"=>"*", "b4"=>"*",
  #  "c1"=>"*", "c2"=>"*", "c3"=>"*", "c4"=>"*",
  #  "d1"=>"*", "d2"=>"*", "d3"=>"*", "d4"=>"*"}

end
