require_relative 'coordinates'
require_relative 'board'

class BoatPossibleMoves
  def self.check(coordinate, coordinates)
    @coordinate  = coordinate
    @coordinates = coordinates
    possible_moves.include?(coordinate)
  end

  def self.setup
    @moves = []

    @letters = Coordinates.letters
    @last_letter_i = @letters.index(@coordinates.keys.last[0])

    @numbers = Coordinates.numbers
    @last_number_i = @numbers.index(@coordinates.keys.last[1])
  end

  def self.possible_moves
    return Coordinates.create if @coordinates.values.length == 0

    setup

    if @coordinates.values.length == 1
      horizontal_moves
      vertical_moves
    end

    if @coordinates.values.length > 1
      horizontal ? horizontal_moves : vertical_moves
    end

    @moves
  end

  def self.horizontal
    @coordinates.keys[0][0] == @coordinates.keys[1][0]
  end

  def self.horizontal_moves
    if @numbers[@last_number_i + 1]
      @moves << @letters[@last_letter_i] + @numbers[@last_number_i + 1]
    end
    if (@last_number_i - 1) >= 0
      @moves << @letters[@last_letter_i] + @numbers[@last_number_i - 1]
    end
  end

  def self.vertical_moves
    if @letters[@last_letter_i + 1]
      @moves << @letters[@last_letter_i + 1] + @numbers[@last_number_i]
    end
    if (@last_letter_i - 1) >= 0
      @moves << @letters[@last_letter_i - 1] + @numbers[@last_number_i]
    end
  end
end
