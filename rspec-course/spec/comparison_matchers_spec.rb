RSpec.describe 'comparison matchers' do

  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 9
    expect(5).to be < 7
    expect(100).to be <= 100
  end


  describe  100 do
    it { is_expected.to be < 203  }
    it { is_expected.to be >= 100 }
    it { is_expected.not_to be > 500}
  end
end