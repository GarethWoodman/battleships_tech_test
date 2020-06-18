require_relative 'board'
require_relative 'boat'

class Interface
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def start_game
    setup_boats
    enter_command
  end

  def setup_boats
    p 'Setting up game...'
    p 'Please set 5 boats'
    1.times do |i|
      puts "Set boat: #{i+1}"
      boat = Boat.new
      boat.set_length
      boat.set_coordinates
      @board.add_boat(boat)
    end
  end

  private

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

interface = Interface.new
interface.start_game

interface.board.boats.each do |boat|
  puts boat.coordinates
end
