require_relative '../lib/player.rb'

describe Player do
  subject(:bob) { described_class.new('Bob') }
  describe '#name' do
    it 'returns the name of the player' do
      expect(bob.name).to eq 'Bob'
    end
  end
end
