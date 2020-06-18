require_relative 'coordinates'
require_relative 'boat'

class Board
  attr_accessor :coordinates, :boats

  def initialize
    @coordinates = Coordinates.create
    @boats = []
  end

  def add_boat(boat)
    if boats_coordinates.any? { |coordinate| boat.coordinates.keys.include?(coordinate) }
      raise 'Overlaps another boat!'
    else
      boats << boat
    end
  end

  def print_board(coordinates = @coordinates)
    board = '  ' + Coordinates.letters.join('  ') + "\n"
    i = -1
    10.times do |y|
      board += y.to_s
      10.times { |x| board += coordinates.values[ i+= 1 ]}
      board += "\n"
    end
    board
  end

  def print_board_with_boats
    boats_coordinates = Coordinates.create
    @boats.each do |boat|
      boat.coordinates.keys.each do |key|
        boats_coordinates[key] = ' o '
      end
    end
    print_board(boats_coordinates)
  end

  def enter_coordinate(input)
    @boats.each { |boat| return hit_boat(input, boat) if boat.coordinates[input] }
    @coordinates[input] = ' * '
    return p('You missed!')
  end

  def win?
    value = 0
    @boats.each { |boat| boat.coordinates.keys.each { |key| value += boat.coordinates[key] } }
    value == 0
  end

  private

  def hit_boat(input, boat)
    @coordinates[input] = ' x '
    boat.coordinates[input] = 0
    p 'Ah, you hit me!'
  end

  def boats_coordinates
    keys = []
    @boats.each { |boat| boat.coordinates.keys.each { |key| keys << key } }
    keys
  end
end
