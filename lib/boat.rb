require 'coordinates'
require 'boat_possible_moves'

class Boat
  attr_accessor :coordinates, :length

  def initialize
    @coordinates = Hash.new
  end

  def set_coordinates
    @length.times do
      while true do
        coordinate = gets.chomp
        break if check(coordinate)
        raise 'invalid coordinate'
      end
      @coordinates[coordinate] = 1
    end
  end

  def set_length
    @length = gets.chomp.to_i
  end

  private

  def check(coordinate)
    raise 'coordinate already taken!' if @coordinates.include?(coordinate)
    BoatPossibleMoves.check(coordinate, @coordinates)
  end
end
