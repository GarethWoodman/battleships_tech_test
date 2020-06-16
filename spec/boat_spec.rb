require 'boat'


describe Boat do
  context 'set specifications' do
    let(:coordinates) { ['A1', 'A2', 'A3'] }
    let(:length) { 3 }

    it 'has coordinates' do
      puts "Enter #{coordinates.join(',')} to pass test"
      subject.set_coordinates
      expect(subject.coordinates.keys).to eq coordinates
    end

    it 'has length' do
      puts "Enter #{length} to pass test"
      subject.set_length
      expect(subject.length).to eq 3
    end
  end
end
