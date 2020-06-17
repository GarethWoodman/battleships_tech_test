require_relative 'board'
require_relative 'boat'

class Interface
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def setup_boats
    puts 'Please set 5 boats'
    2.times do |i|
      puts "Set boat: #{i+1}"
      boat = Boat.new
      boat.set_length
      boat.set_coordinates
      @board.add_boat(boat)
    end
  end
end

# interface = Interface.new
# interface.setup_boats
#
# interface.board.boats.each do |boat|
#   puts boat.coordinates
# end
