########instance variable vs class variable?
class Player
#prompt to choose X or O
#player_move code will be a class variable
  #it will taken in an argument that requires the player to input an available number 
  #on the board
attr_accessor :move, :player_name, :symbol, :comp_symbol, :new_spot

   def initialize
    puts "Please enter your name"
    @@player_name = gets.chomp  

    puts "Please choose either X or O"
    @@symbol = gets.chomp
      
      @@comp_symbol = "X"
      if @@symbol == "X"
        @@comp_symbol = "O"
      end
   end

  def player_turn#(move=0)
    #prompt the player to input an available number
    #check if that number is available
    #if it is, add it to the board
    Board.board_display
      puts "Please choose which number you want to input. Type exit to end the game"
      #add in if no number is chosen - unless method?
      @@move = gets.chomp        
        if @@move == "exit"
          exit
        end
    Board.board
    Board.winner
  end

  def self.move
    # take the value from move and update the board 
    @@move
  end

  def self.player_name
    @@player_name
  end

  def self.symbol
    @@symbol
  end

  def self.comp_symbol
    @@comp_symbol
  end

  #need to randomly choose an available number in the board
  #subtract player_x variable from board variable?
  #.sample
  def comp_turn
    @@new_spot = Board.full_board - ["X"]
    @@new_spot = @@new_spot.sample
    Board.board
    #Board.winner
  end

  def self.new_spot
    @@new_spot.to_i
  end

end

