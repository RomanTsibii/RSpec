RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }
  it 'check that a method change object state' do
    # expect { subject.push(4) }.to change {subject.length}.from(3).to(4)
    expect { subject.push(4) }.to change {subject.length}.by(1)
    print subject
  end

  it 'accepts negative arguments' do
    print subject.to_s + "\n"
    expect { subject.pop }.to change {subject.length }.by(-1)
    print subject
  end
end