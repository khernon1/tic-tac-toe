class Player

  attr_accessor :player_name, :player_symbol

  def initialize
   getName
   getSymbol
  end

  def getName
   puts "Welcome to the game! Please enter your name."
   @player_name = gets.chomp
  end

  def getSymbol
   puts "Hello #{@player_name}! Please choose X or O."
   @player_symbol = gets.chomp
  end

end

