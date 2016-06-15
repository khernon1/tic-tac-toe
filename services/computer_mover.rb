class ComputerMove

  def initialize      
    @computer_move = computer_move
  end

  def get_computer_choice(board)    
    @computer_move = game.board - [computer_symbol] - [player_symbol]
    @computer_move = @computer_move.sample
  end

  def computer_board_actions
    game.board[computer_move.to_i-1] = computer_symbol      
    computer(computer_move)
  end

end