require_relative 'board'
require_relative 'boat'

class Interface
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def start_game
    p 'Setting up game...'
    setup_boats
    enter_command
  end

  private

  def setup_boats
    p 'Please set 5 boats'
    5.times do |i|
      puts "Set boat: #{i+1}"
      boat = Boat.new
      boat.set_length
      boat.set_coordinates
      @board.add_boat(boat)
    end
  end

  def enter_command
    while true do
      list_commands
      input = gets.chomp.to_i

      if input ==  1
        puts @board.print_board
      elsif input == 2
        puts @board.print_board_with_boats
      elsif input == 3
        p 'Enter coordinate from A0 to I9'
        @board.enter_coordinate(gets.chomp)
        return p('You win!') if @board.win?
      elsif input == 4
        p 'Exiting...'
        break
      else
        p 'Invalid command'
      end
    end
  end

  def list_commands
    p 'Enter one of these commands:'
    p '1. Show board'
    p '2. Show board with boats'
    p '3. Enter coordinate'
    p '4. Exit'
  end
end
