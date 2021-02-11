require 'player'

describe Player do
  subject(:player) {Player.new('Oliver')}

  describe '#name' do
    it 'returns the players name' do
      expect(subject.name).to eq 'Oliver'
    end
  end
end