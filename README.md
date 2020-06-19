# Battleships - Tech Test

## Specification
* [battleships_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/battleships_tech_test.md)

## Planning
## Models
### Boat
#### Methods
* start_game - starts game!
##### Private
* setup_boats - Sets up boats for the game
* enter_command - Prompts to enter a command to interact with game
* list_commands - Lists available commands to enter


### Board
#### Methods
* add_boat(boat) - Adds boat to board
* print_board(coordinates) - Prints current status of board (I.E hit( 'X' ) and missed( * ) shots)
* print_board_with_boats - Prints board with boats displayed
* enter_coordinate(input) - Places marker on board with either 'X' or '*'
#### Attributes
* @coordinates
* @boats


### BoatPossibleMoves
#### Methods
* self.check(coordinate, coordinates) - checks the current coordinate entered against all other coordinates for current boat
##### Private
* self.setup - sets up the coordinates entered so far for current boat
* self.possible_moves - checks all possible moves/coordinates that can be entered when making a boat
* self.horiontal? - returns true if first two coordinates of current boat are layed out horizontally
* self.horizontal_moves - adds all possible horizontal moves
* self.vertical_moves - adds all possible vertical moves


### Coordinates
#### Methods
* self.create - returns all possible coordinates of a board (From A0 to I9)
* self.letters - returns all letters used in coordinates
* self.numbers - returns all numbers used in coordinates
