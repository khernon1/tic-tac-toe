require 'pry'
class PlayerMove

  def initialize(board, player)
    #@player_move = player_move
    get_player_choice#(@game, @player)
  end

  def get_player_choice#(game, player)
#    binding.pry
    @game.board_display
      puts "Please choose which number you want to input. Type exit to end the game."
      @player_move = gets.chomp        
        exit if @player_move == "exit"
      player_board_actions(@player_move)     
  end
     
  def player_board_actions(player_move)
    game.board[player_move.to_i-1] = player_symbol ### needs to be passed
    player(player_move)
  end
    
end