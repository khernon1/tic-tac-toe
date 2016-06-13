require_relative './board.rb'
require_relative './player.rb'


game = Player.new

#loop until someone wins
until Board.result == true
  game.player_turn
  game.comp_turn  
end
