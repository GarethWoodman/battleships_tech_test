class Coordinates
  def self.create
    @coordinates = Hash.new
    create_coordinates
    @coordinates
  end

  def self.create_coordinates
    letters.each do |letter|
      numbers.each { |number| @coordinates[letter + number.to_s] = ' - ' }
    end
  end

  def self.letters
    ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
  end

  def self.numbers
    ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  end

  private_class_method :create_coordinates
end
