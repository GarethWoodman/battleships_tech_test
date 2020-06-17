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

  private

  def boats_coordinates
    keys = []
    @boats.each { |boat| boat.coordinates.keys.each { |key| keys << key } }
    keys
  end
end
