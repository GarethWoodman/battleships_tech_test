# Battleships - Tech Test

## Specification
* [battleships_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/battleships_tech_test.md)

## Instructions
In current working directory
```
load './lib/interface.rb'
```

```
interface = Interface.new
interface.start_game
```

Enter coordinates for 5 boats to setup game (Only showing the first two as an example, there will still be 5 in total)
```
"Setting up game..."
"Please set 5 boats"
Set boat: 1
Enter length of boat between 2 and 5

> 2

Enter coordinate from A0 to I9

> A0

Enter coordinate from A0 to I9

> A1

Set boat: 2
Enter length of boat between 2 and 5

> 3

Enter coordinate from A0 to I9

> E4

Enter coordinate from A0 to I9

> F4

Enter coordinate from A0 to I9

> G4

```

Show the board with boats to confirm placement (then hide it from whoever will play)
```
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"

> 2

  A  B  C  D  E  F  G  H  I  J
0 o  -  -  -  -  -  -  -  -  - 
1 o  -  -  -  -  -  -  -  -  - 
2 -  -  -  -  -  -  -  -  -  - 
3 -  -  -  -  -  -  -  -  -  - 
4 -  -  -  -  o  o  o  -  -  - 
5 o  -  o  o  o  o  o  -  -  - 
6 o  -  -  -  -  -  -  -  -  - 
7 o  -  -  -  -  -  -  -  o  - 
8 o  -  -  -  -  -  -  -  o  - 
9 -  -  -  -  -  -  -  -  o  - 
```

Demand a friend to play your game and show their missed hits on the board, marked with '*'
```
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"

> 3

"Enter coordinate from A0 to I9"

> D2

"You missed!"

"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"

> 3

"Enter coordinate from A0 to I9"
G0
"You missed!"
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"

> 1

  A  B  C  D  E  F  G  H  I  J
0 -  -  -  -  -  -  *  -  -  - 
1 -  -  -  -  -  -  -  -  -  - 
2 -  -  -  *  -  -  -  -  -  - 
3 -  -  -  -  -  -  -  -  -  - 
4 -  -  -  -  -  -  -  -  -  - 
5 -  -  -  -  -  -  -  -  -  - 
6 -  -  -  -  -  -  -  -  -  - 
7 -  -  -  -  -  -  -  -  -  - 
8 -  -  -  -  -  -  -  -  -  - 
9 -  -  -  -  -  -  -  -  -  - 
```

They managed to sink a ship, successful hits marked with 'X'
```
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"
3
"Enter coordinate from A0 to I9"
A0
"Ah, you hit me!"
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"
3
"Enter coordinate from A0 to I9"
A1
"Ah, you hit me!"
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"
1
  A  B  C  D  E  F  G  H  I  J
0 x  -  -  -  -  -  *  -  -  - 
1 x  -  -  -  -  -  -  -  -  - 
2 -  -  -  *  -  -  -  -  -  - 
3 -  -  -  -  -  -  -  -  -  - 
4 -  -  -  -  -  -  -  -  -  - 
5 -  -  -  -  -  -  -  -  -  - 
6 -  -  -  -  -  -  -  -  -  - 
7 -  -  -  -  -  -  -  -  -  - 
8 -  -  -  -  -  -  -  -  -  - 
9 -  -  -  -  -  -  -  -  -  - 
```

After many attempts, the final move wins the game
```
  A  B  C  D  E  F  G  H  I  J
0 x  -  -  -  -  -  *  -  -  - 
1 x  -  -  -  -  -  -  -  *  - 
2 -  *  -  *  -  -  -  -  *  - 
3 -  -  -  -  -  -  -  -  -  - 
4 -  -  -  -  x  x  x  -  -  - 
5 x  *  x  x  x  x  x  -  -  - 
6 x  -  -  -  -  -  -  -  -  - 
7 x  -  -  -  *  -  -  -  x  - 
8 x  -  -  -  -  -  -  -  x  - 
9 -  -  *  -  -  -  -  -  -  - 
"Enter one of these commands:"
"1. Show board"
"2. Show board with boats"
"3. Enter coordinate"
"4. Exit"

> 3

"Enter coordinate from A0 to I9"

> I9

"Ah, you hit me!"
"You win!"

```

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
