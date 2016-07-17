# NOT SURE THIS IS NECESSARY SINCE THERE IS A RUBY TIME METHOD

class Time
  attr_reader :game_start_time
              :game_end_time

  def initialize
    @game_start_time = game_start_time
    @game_end_time = game_end_time
  end

  def get_current_time
    puts "Current Time : " + time.inspect
  end

  def set_start_time
    @game_start_time = get_current_time
  end

  def set_end_time
    @game_end_time = get_current_time
  end
end
