require 'boat'


describe Boat do
  context 'set specifications' do
    let(:coordinates) { ['A1', 'A2', 'A3'] }
    let(:length) { 3 }

    it 'has coordinates' do
      puts "Enter #{coordinates.join(',')} to pass test"
      subject.length = length
      subject.set_coordinates
      expect(subject.coordinates.keys).to eq coordinates
    end

    it 'has length' do
      puts "Enter #{length} to pass test"
      subject.set_length
      expect(subject.length).to eq 3
    end

    context 'checks 2nd coordinate' do
      let(:boat) do
        subject.length = 2
        subject
      end

      it "entered correctly " do
        puts "Enter coordinates A1, A2"
        boat.set_coordinates
        expect(boat.coordinates.keys).to eq ['A1', 'A2']
      end

      it "raises error if incorrect " do
        puts "Enter coordinates A1, A3"
        expect { boat.set_coordinates }.to raise_error('invalid coordinate')
      end
    end
  end
end
