RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect(1).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect([]).to be_truthy
    expect([1,2,3]).to be_truthy
    expect({}).to be_truthy
    expect(:a).to be_truthy

    expect(2.34).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be(nil)
    expect(nil).to be_nil

    my_hash = { a: 5, b: 3}
    expect(my_hash[:t]).to be_nil
  end
end