class Player
  attr_reader :name,
              :user_input

  def initialize(name)
    @name = name
    @user_input = user_input
  end

  def get_coordinates
    coordinate = @user_input
  end
end
