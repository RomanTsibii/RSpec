class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name, @finishing_move = name, finishing_move
  end
end

RSpec.describe 'have attributes matcher' do
  describe ProfessionalWrestler.new('Stone Could Steve Austin', 'Stunner') do
    it 'check for object attribute and proper value' do
      expect(subject).to have_attributes(name: 'Stone Could Steve Austin')
    end

    it { is_expected.to have_attributes(name: 'Stone Could Steve Austin', finishing_move: 'Stunner')}
  end

end