# Battleships - Tech Test

## Specification
* [battleships_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/battleships_tech_test.md)

## Planning

## Models
### Boat
#### Methods
* set_specifications - Defines specifications of boat (i.e, horizontal/vertical, length)
* check_status - Checks status of boat (i.e how many hits)
#### Attributes
* @coordinates
* @is_sunk


### Board
#### Methods
* check_boats - Checks all boats on board(no pun intended)
* hit_boat - Hits boat if a condition is met
* print - Prints current status of the board
#### Attributes
* @boats
* @pins
* @coordinates
