require './test/test_helper'
require './lib/gameboard'

class GameboardTest < Minitest::Test

  def test_it_creates_a_new_board
    board = GameBoard.new

    assert_instance_of GameBoard, board
  end

  def test_it_assembles_2_x_2_board
    board = GameBoard.new(2)

    assert_equal 2, board.gameboard.length
  end

  def test_it_assembles_3_x_3_board
    board = GameBoard.new(3)

    assert_equal 3, board.gameboard.length
  end

  def test_it_generates_a_line
    board = GameBoard.new

    assert_equal [" ", " ", " ", " "], board.generate_line
  end

  def test_it_generates_complete_gameboard
    board = GameBoard.new

    assert_equal [[" ", " ", " ", " "],
                  [" ", " ", " ", " "],
                  [" ", " ", " ", " "],
                  [" ", " ", " ", " "]], board.generate_gameboard
  end

  def test_it_can_record_a_shot_on_a_small_board
    board = GameBoard.new

    assert_respond_to board, :record_shot
  end

  def test_we_can_pass_coordinates_into_record_shot
    board = GameBoard.new

    assert_equal [0,0], board.record_shot(0,0)
  end

  def test_we_can_pass_different_coordinates_into_record_shot
    board = GameBoard.new

    assert_equal [1,1], board.record_shot(1,1)
  end

  def test_it_places_shot_on_2_x_2_board
    board = GameBoard.new(2)
    board.record_shot(0,0)

    assert_equal [["M", " "],
                  [" ", " "]], board.gameboard
  end

  def test_it_can_place_two_shots_on_a_board
    board = GameBoard.new
    board.record_shot(1,3)
    board.record_shot(3,2)

    assert_equal [[" ", " ", " ", " "],
                  [" ", " ", " ", "M"],
                  [" ", " ", " ", " "],
                  [" ", " ", "M", " "]], board.gameboard
  end

  def test_it_validates_shot
    board = GameBoard.new
    board.record_shot(3,2)

    assert_equal false, board.valid_shot?(3,2)
    assert_equal true, board.valid_shot?(2,3)
  end

  def test_it_cannot_take_a_shot_in_the_same_place_twice
    board = GameBoard.new
    board.record_shot(3,2)

    assert_equal "You have already hit this spot!", board.record_shot(3,2)
  end

  def test_it_marks_shot_on_board
    board = GameBoard.new
    board.record_shot(2,2)

    assert_equal [2,2], board.mark_shot_on_board(2,2)
  end
end
