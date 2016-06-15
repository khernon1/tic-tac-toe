require 'pry'
# require_relative 'services/board_manager.rb'
# require_relative 'services/win_checker.rb'
# require_relative 'services/move_maker.rb'
# require_relative 'services/player_creator.rb'
# require_relative 'services/computer_creator.rb'
# require_relative 'services/player_mover.rb'
# require_relative 'services/computer_mover.rb'
# require_relative 'services/playerMove.rbge'

class Runner

  #this is where the entire game will be run from
  # models are used to store, services are used to do

# 1. start new game - runner
# 2. choose player name - service method CreateUser
# 3. choose player symbol - service method CreateUserSymbol - computer gets opposite symbol in different service method? 

# 4. player chooses square position - service method to make move
#   5. square position chosen is added to board - service method to update board
#   6. square position chosen is added to players total moves - service method to update player moves
#     7. check to see if the players total moves result in a win - win class?

# 8. computer chooses square position - service method to make move
#   9. square position chosen is added to board - service method to update board
#   10. square position chosen is added to computers total moves - service method to update computer moves
#     11. 7. check to see if the computers total moves result in a win - win class?

# repeat 4 and 8

  def run
    @board = ManageBoard.new #creates a new board
    @player = Player.new #creates a new player name and symbol
    @computer = Computer.new(@player) #gives computer the opposite symbol of the player
#     # checkWinner should initialize to false
#     # checkWinner needs dependents of player, computer, and game service objects
#         # also dependent on where the moves are stored in the models

#     # run the below until checkWinner is true
     @make_move = MakeMove.new(@board, @player)
#     # make move to include the turn, the player choice, and the computer choice
#     # manageBoard - will update and display the board 
  end

end

run = Runner.new
run.run

