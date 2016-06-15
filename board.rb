require 'pry'
class Board

attr_reader :board, :result

def initialize
  @board = (1..9).to_a
  @player_moves = []
  @winning_array = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  @computer_moves = []
  @result = false
end

  def board_display
    @board_display =  "          #{@board[0]} | #{@board[1]} | #{@board[2]}
          ---------
          #{@board[3]} | #{@board[4]} | #{@board[5]}
          ---------
          #{@board[6]} | #{@board[7]} | #{@board[8]}"
    puts @board_display
  end

  def board_actions(player_move, computer_move, turn, player_symbol, computer_symbol)
    if turn.to_i.odd? #if it is the players turn
      player_board_actions(player_move, player_symbol)
    else # if it is the computers turn
      computer_board_actions(computer_move, computer_symbol)
    end
  end
     
    def player_board_actions(player_move, player_symbol)
      @board[player_move.to_i-1] = player_symbol
      @player_moves << player_move.to_i      
    end
    

    def computer_board_actions(computer_move, computer_symbol)
       @board[computer_move.to_i-1] = computer_symbol      
       @computer_moves << computer_move.to_i
    end


  def decide_winner(player_name)
    player_combinations = @player_moves.combination(3).to_a
    player_combinations.uniq.each do |combination|
      player_wins(player_name) if @winning_array.include?(combination.sort)
    end

    computer_combinations = @computer_moves.combination(3).to_a
    computer_combinations.uniq.each do |combination|
      computer_wins(player_name) if @winning_array.include?(combination.sort)
    end

  end


    def player_wins(player_name)       
       board_display
       puts "#{player_name} has won!"        
       @result = true
    end
    
    def computer_wins
       board_display
       puts "The computer has won!"        
       @result = true
    end      

end

