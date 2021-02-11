require 'player'

describe Player do
  subject(:player_1) {Player.new('Player 1')}
  subject(:player_2) {Player.new('Player 2')}

  describe '#name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Player 1'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#recieve_damage' do
    it 'reduces the players hit points' do
      expect { player_1.receive_damage}.to change { player_1.hit_points}.by(-10)
    end
  end
end
