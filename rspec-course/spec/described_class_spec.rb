class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe Person do
  subject { described_class.new('Roman')}
  let(:louis) { described_class.new('Louis')}

  it 'represents a great person' do
    expect(subject.name).to eq('Roman')
    expect(louis.name).to eq('Louis')
  end
end