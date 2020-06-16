require 'board'

describe Board do
  it 'creates cells of board' do
    expect(subject.coordinates.keys[0]).to eq "A0"
    expect(subject.coordinates.keys[50]).to eq "F0"
    expect(subject.coordinates.keys[99]).to eq "J9"
  end
end
