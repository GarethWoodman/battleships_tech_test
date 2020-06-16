class Coordinates
  def self.create
    setup
    create_coordinates
    @coordinates
  end

  def self.setup
    @letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
    @numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    @coordinates = Hash.new
  end

  def self.create_coordinates
    @letters.each do |letter|
      @numbers.each { |number| @coordinates[letter + number.to_s] = ' - ' }
    end
  end

  private_class_method :setup, :create_coordinates
end
