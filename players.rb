class Players

  def initialize
   puts "Welcome to the game! Please enter your name."
   @player_name = gets.chomp
   puts "Hello #{@player_name}! Please choose X or O."
   @player_symbol = gets.chomp
      @computer_symbol = "X"
      @computer_symbol = "O" if @player_symbol == "X"      
   @turn = 1 #used in the board method, if it is odd then the players turn, if it's even it's computer
  end

  def player_turn(board)
    board.board_display
      puts "Please choose which number you want to input. Type exit to end the game"
      #add in if no number is chosen - unless method?
      @player_move = gets.chomp        
        exit if @player_move == "exit"     

    board.board_actions(@player_move, @computer_move, @turn, @player_symbol, @computer_symbol)
    turn(board)
    check_for_winner(board)
  end

  def computer_turn(board)    
    @computer_move = board.board - [@computer_symbol] - [@player_symbol]
    @computer_move = @computer_move.sample

    board.board_actions(@player_move, @computer_move, @turn, @player_symbol, @computer_symbol)
    turn(board)
    check_for_winner(board)
  end

    def turn(board)
      @turn += 1
      if @turn > 10          
          board.board_display
          puts "Game is a draw"
          exit
      end      
    end

    def check_for_winner(board)
      board.decide_winner(@player_name)
    end

end

#Pry.start
