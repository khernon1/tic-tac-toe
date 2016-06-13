class Board

# Board - creates the board at the beginning
  # Initialize 
    # Board.New - starts the game
  # Class variables
  # the values as they are input on the total board
  # the winning_array
  # Class methods
    # Updates the board

@@board = (1..9).to_a
@@board_display =  "          #{@@board[0]} | #{@@board[1]} | #{@@board[2]}
          ---------
          #{@@board[3]} | #{@@board[4]} | #{@@board[5]}
          ---------
          #{@@board[6]} | #{@@board[7]} | #{@@board[8]}"

@@winning_array = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
@@player_x = []
@@player_o = []
@@result = false
@turn = 1 #used in the board method, if it is odd then the players turn, if it's even it's computer

  def initialize
  
  end

  def self.turn
    @@turn
  end

  def self.result
    @@result
  end

  def self.full_board
    @@board
  end

  def self.player_x
    @@player_x
  end

  def self.board_display
    puts @@board_display
  end

  def self.board
    if @turn.odd?
      @@board[Player.move.to_i-1] = Player.symbol
      @@player_x << Player.move.to_i
     # @@board_display.update
    else
      @@board[Player.new_spot-1] = Player.comp_symbol
      @@player_o << Player.new_spot
         @@board_display =  "            #{@@board[0]} | #{@@board[1]} | #{@@board[2]}
            ---------
            #{@@board[3]} | #{@@board[4]} | #{@@board[5]}
            ---------
            #{@@board[6]} | #{@@board[7]} | #{@@board[8]}"
      end
    
    @turn += 1
    if @turn >= 9
        puts "Game is a draw"
        exit
    end
  end

  def self.winner
    # iterate through player_x array 
      # bring in everything from winning_array that includes the 

    if @@winning_array.include?(@@player_x.sort)
        puts "#{Player.player_name} has won!"
        @@result = true
    elsif @@winning_array.include?(@@player_o.sort)
        puts "The computer has won!"
        @@result = true
    end      
  end

end