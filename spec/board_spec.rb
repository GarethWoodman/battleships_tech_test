require 'board'

describe Board do
  let(:boat) do
    boat = Boat.new
    boat.coordinates['A1'] = 1
    boat.coordinates['A2'] = 1
    boat
  end

  it 'creates cells of board' do
    expect(subject.coordinates.keys[0]).to eq "A0"
    expect(subject.coordinates.keys[50]).to eq "A5"
    expect(subject.coordinates.keys[99]).to eq "J9"
  end

  it 'throws error if a boat overlaps another' do
    p 'Make boats overlap'
    subject.add_boat(boat)
    expect { subject.add_boat(boat) }.to raise_error 'Overlaps another boat!'
  end
end
