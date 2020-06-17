require 'interface'

describe Interface do
  it 'has board' do
    expect(subject.board.class).to eq Board
  end

  it 'places a boat' do
    subject.setup_boats
    expect(subject.board.boats[0].class).to eq Boat
  end
end
