Tic tac toe

Service objects


Separate out being from doing.
Service object - a separate object that is in charge of doing things
Should be a sequential story, one after another, easy to read


Person class responsbile for making new person

Making move class responsible for making move for person and computer

Board class creates and manages the board

Square class updates board (dependent on board)


1. start new game - runner method?
2. choose player name - service method CreateUser
3. choose player symbol - service method CreateUserSymbol - computer gets opposite symbol in different service method? 

4. player chooses square position - service method to make move
  5. square position chosen is added to board - service method to update board
  6. square position chosen is added to players total moves - service method to update player moves
    7. check to see if the players total moves result in a win - win class?

8. computer chooses square position - service method to make move
  9. square position chosen is added to board - service method to update board
  10. square position chosen is added to computers total moves - service method to update computer moves
    11. 7. check to see if the computers total moves result in a win - win class?

repeat 4 and 8









Objects
Game
Board
Players

Players and Board belong to Game
Board has many players


 Consider what would happen if today I told you that we were playing checkers instead of tic tac toe.  Just by looking at your class names, which classes would you be able to reuse.  Now actually, go through the code in those identified classes...how much of the code in those classes would actually be reusable?  Place a mark next to the code that would not be reusable.

 The game class could be reused.

 The board class
 :result - same
 :board - same
 :board_display - amendments into a checkers board
 :board_actions - same
 :decide_winner - amend to see if either team has no pieces left
 :player_wins - same
 :computer_wins - same
 :player_board_actions - same
 :computer_board_actions - same
 

The players class
 :player_turn - same
 :computer_turn - amended since a random sample cannot be used
 :turn - same
 :check_for_winner - same