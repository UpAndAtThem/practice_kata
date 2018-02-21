-Create game board
  - game board is array of 9 possible positions with values of 'X' or 'O'

loop
-display current board state
-player chooses 1-9 to make selection
  -checks to see if already selected.
    -if space is already selected 
      -prompt to choose another space
  -if newly marked space creates a win. (winner equals 3 same chars in a row, col, or diagonal) 
    -prompt the win and tally +1 to player
    -return to begining unless wins the best of.
      -if best of reached anounce overall winner.
-computer chooses 1-9
  -checks if there is a win possible
    -if true mark space and tally +1
  -checks if there is a defensive move to avoid a loss
    -if true mark space
  -checks if the middle space is available
    -if true mark space
  -otherwise mark random available space

loop to line 4 and continue until there is an overall winner.