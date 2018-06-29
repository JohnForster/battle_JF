require_relative '../lib/player.rb'

describe Player do
  subject(:bob) { described_class.new('Bob') }
  let(:player2) { double(:player2) }
  describe '#name' do
    it 'returns the name of the player' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#feel_hurt' do
    it 'reduces morale by 10' do
      expect { bob.feel_hurt }.to change { bob.morale }.by(-10)
    end
  end

  describe '#insult' do
    it 'makes the target feel hurt' do
      expect(player2).to receive(:feel_hurt)
      bob.insult(player2)
    end
  end
end
