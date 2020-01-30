class HotChokolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchased #{number} more hot chokolate bererages"
  end
end

RSpec.describe HotChokolate do
  it 'confirm that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)

  end
  it 'confirm an object can respond to a method with argument' do
    expect(subject).to respond_to(:purchase).with(1).argument
  end
end