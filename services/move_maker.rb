class MakeMove

  def initialize(game, player)
    @turn = 1

    if @turn.to_i.odd? #if it is the players turn
      @player_move = PlayerMove.new(@game, @player)
    else # if it is the computers turn
      @computer_move = ComputerMove.new
    end
    #call turn method to increment and see if draw
  end

end
