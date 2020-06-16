require 'boat'


describe Boat do
  context 'set specifications' do
    it 'has coordinates' do
      puts 'Enter A1, A2, A3 to pass test'
      subject.set_coordinates
      expect(subject.coordinates.keys).to eq ['A1', 'A2', 'A3']
    end
  end
end
