require './test/test_helper'
require './lib/feedback'

class FeedbackTest < Minitest::Test
  def tests_it_gives_shot_miss_feedback
    feedback = Feedback.new
    assert_equal "You have not hit any ship at coordinates.", feedback.missed_shot_message
  end

  def test_it_gives_hit_shot_message
    feedback = Feedback.new
    assert_equal "You have hit an enemy ship at coordinates!", feedback.hit_shot_message
  end

  def tests_it_gives_sunk_feedback
    skip
    feedback = Feedback.new
    assert_equal "You have sunk an enemy shot at coordinates!", feedback.sunk_ship_message
  end
end
