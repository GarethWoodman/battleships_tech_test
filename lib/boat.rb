require_relative 'coordinates'
require_relative 'boat_possible_moves'

class Boat
  attr_accessor :coordinates, :length

  def initialize
    @coordinates = Hash.new
  end

  def set_coordinates
    @length.times do
      while true do
        puts 'Enter coordinate from A0 to I9'
        coordinate = gets.chomp
        break if check(coordinate)
        raise 'invalid coordinate'
      end
      @coordinates[coordinate] = 1
    end
  end

  def set_length
    puts 'Enter length of boat between 2 and 5'
    input = gets.chomp.to_i
    if input > 1 && input < 6
      @length = input
    else
      raise 'invalid length'
    end
  end

  private

  def check(coordinate)
    raise 'coordinate already taken!' if @coordinates.include?(coordinate)
    BoatPossibleMoves.check(coordinate, @coordinates)
  end
end
