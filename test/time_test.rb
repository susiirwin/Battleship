# NOT SURE THIS IS NECESSARY SINCE THERE IS A RUBY TIME METHOD

require './test/test_helper'
require './lib/time'

class TimeTest < Minitest::Test

  def test_it_can_record_a_start_time
    time = Time.new

    assert_respond_to time, :get_current_time
  end

  def test_it_can_store_current_time_as_start_time
    time = Time.new

    assert_respond_to time, :set_start_time
  end

  def test_it_can_store_current_time_as_end_time
    time = Time.new

    assert_respond_to time, :set_end_time
  end
end
