class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank, @suit = rank, suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades')}

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'my error messages' do
    combination = 'Spades'
    expect(card.suit).to eq(combination), "Hey, i expected #{card.suit}, but i got #{combination} ."
  end
end

def dee

end


