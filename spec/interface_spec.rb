require 'interface'

describe Interface do
  it 'has board' do
    expect(subject.board.class).to eq Board
  end
end
