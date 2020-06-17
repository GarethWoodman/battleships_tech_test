require 'board'

class Interface
  attr_reader :board

  def initialize
    @board = Board.new
  end
end
