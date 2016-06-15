class ManageBoard

attr_accessor :board_display
attr_reader :board

def initialize
  @board = (1..9).to_a
end

  def board_display
    @board_display =  "          #{@board[0]} | #{@board[1]} | #{@board[2]}
          ---------
          #{@board[3]} | #{@board[4]} | #{@board[5]}
          ---------
          #{@board[6]} | #{@board[7]} | #{@board[8]}"
    puts @board_display
  end

end

