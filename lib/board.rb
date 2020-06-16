class Board
  attr_reader :coordinates
  def initialize
    @letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
    @numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    @coordinates = Hash.new
  end

  def create_board
    @letters.each do |letter|
      @numbers.each { |number| @coordinates[letter + number.to_s] = ' - ' }
    end
  end
end
