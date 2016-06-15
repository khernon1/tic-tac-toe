# require_relative './createPlayer.rb'
class Computer

  attr_accessor :computer_symbol

  def initialize(player)
    @computer_symbol = "X"
    @computer_symbol = "O" if player.player_symbol == "X"      
  end

end

# player = Player.new
# computer = Computer.new(player)