RSpec.describe 'start_with and end_with matcher' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or and' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end
    it { is_expected.to start_with('cat') }
  end
  describe [1, 2, 3, :a, :b, :bay] do
    it 'should check the element at beginning or and of the array' do
      expect(subject).to start_with(1, 2)
      expect(subject).to end_with(:bay)
    end
    it { is_expected.to start_with(1, 2) }
    it { is_expected.to end_with(:bay) }
    it { is_expected.to end_with(:a, :b, :bay) }
    it { is_expected.to end_with(1, 2, 3, :a, :b, :bay)} # ?
    it { is_expected.to start_with(1, 2, 3, :a, :b, :bay)} # ?
  end
end