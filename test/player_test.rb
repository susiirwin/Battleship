require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_can_create_a_name_player_with_a_name
  player = Player.new("Susi")

  assert_equal "Susi", player.name
end

def test_it_can

end

end
