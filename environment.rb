 require 'pry'
 require_relative './players.rb'
 require_relative './board.rb'


@player = Players.new
@board = Board.new

until @board.result == true
    @player.player_turn(@board)
    @player.computer_turn(@board)  
end


