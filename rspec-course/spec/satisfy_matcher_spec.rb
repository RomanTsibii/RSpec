RSpec.describe ' satisfy matcher' do
  subject { '123456 8 654321' }
  # subject { '123456 8654321' }

  it 'is a palindrome' do
    expect(subject).to satisfy {  |value| value == value.reverse  }
  end

  it 'can accept a custom error massages' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end

  describe '123 2 321' do
    it { is_expected.to satisfy { |value| value == value.reverse } }
  end

end