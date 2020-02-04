RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirm that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'retains the same functionality of a regular double' do

    animal.eat_food
    animal.eat_food
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).twice.with(no_args)

    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times

    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end
end