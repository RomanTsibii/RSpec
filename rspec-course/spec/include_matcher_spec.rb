RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'check for substring matcher' do
      expect(subject).to include('hot')
      expect(subject).to include(' choco')
      expect(subject).to include('late')
    end
    it { is_expected.to include('hot')}
  end

  describe [10, 20, 30] do
    it 'check for array matcher' do
      expect(subject).to include(10, 30)
      expect(subject).to include(20)
      expect(subject).to include(30)
    end
    it { is_expected.to include(10, 20, 30)}
  end

  describe ({ a: 2, b: 4 } ) do
    it 'check for Hash matcher' do
      expect(subject).to include(:a)
      expect(subject).to include(:b)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:a, b: 4, a: 2)
      expect(subject).to include(a: 2, b: 4)
    end

    it { is_expected.to include(a: 2, b: 4)}
  end
end