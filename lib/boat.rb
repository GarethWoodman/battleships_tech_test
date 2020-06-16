require 'coordinates'

class Boat
  attr_reader :coordinates, :length

  def initialize
    @coordinates = Hash.new
  end

  def set_coordinates
    @coordinates[gets.chomp] = 1
    @coordinates[gets.chomp] = 1
    @coordinates[gets.chomp] = 1
  end

  def set_length
    @length = gets.chomp.to_i
  end
end
