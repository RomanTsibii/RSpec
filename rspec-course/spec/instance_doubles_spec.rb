class Person
  def a(second, three)
     sleep(3)
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq('Hello')
      expect(person.b).to eq(20)
    end
  end

  describe 'instance double' do
    it 'can only implement method that are defined on the class' do
      # person = instance_double(a: "Hello", b: 20)

      person = instance_double(Person)
      allow(person).to receive(:a).with(5, 7).and_return("Hello")
      expect(person.a(5, 7)).to eq("Hello")
    end
  end
end