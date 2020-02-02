RSpec.describe 'allow method review' do
  it 'can customize return value for method on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
    expect(calculator.add(3)).to eq(15)
    expect(calculator.add(5)).to eq(15)
    expect(calculator.add(-115)).to eq(15)
  end

  it 'can stub one or more method on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(55)
    expect(arr).to eq([1, 2, 3, 55])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:a, :b, nil)
    expect(mock_array.pop).to eq(:a)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to eq(nil)
    # all to be nil
  end
end