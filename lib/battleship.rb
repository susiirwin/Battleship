require './lib/gameboard'
require './lib/feedback'

puts Feedback.greeting

while .get_path != "q"
  if battleship.input == "i"
  puts battleship.instructions
elsif battleship.input == "p"
  puts Feedback.play
  puts player.get_starting_coordinates_two_ship
  puts player.get_starting_coordinates_three_ship





  end
end
