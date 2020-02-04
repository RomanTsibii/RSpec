class Deck
  def self.build
    #dfvdvdv
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'only can implement class method that a defined on a class' do
    deck_class = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_class).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
      # expect(subject.)
  end
end