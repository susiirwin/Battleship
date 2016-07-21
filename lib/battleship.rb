require './lib/messages'

class Battleship
  attr_reader :messages

  def initialize
    @messages = Messages.new
  end

  def welcome
    messages.greeting
    get_user_input
  end

  def get_user_input
    user_input = gets.chomp.to_s.downcase
    game_manager(user_input)
  end

  def instructions_welcome
    messages.instructions
    get_user_input
  end

  def error_welcome
    messages.error
    get_user_input
  end

  def game_manager(user_input)
    if user_input == 'p' || user_input == 'play'
      messages.computer_play
    elsif user_input == 'i' || user_input == 'instructions'
      instructions_welcome
    elsif user_input == 'q' || user_input == 'quit'
      messages.quit
    else
      error_welcome
    end
  end
end

Battleship.new.welcome
