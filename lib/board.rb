require 'coordinates'

class Board
  attr_reader :coordinates

  def initialize
    @coordinates = Coordinates.create
  end
end
