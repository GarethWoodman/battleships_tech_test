require 'coordinates'

class Boat
  attr_reader :coordinates

  def initialize
    @coordinates = Hash.new
  end

  def set_coordinates
    @coordinates[gets.chomp] = 1
    @coordinates[gets.chomp] = 1
    @coordinates[gets.chomp] = 1
  end
end
