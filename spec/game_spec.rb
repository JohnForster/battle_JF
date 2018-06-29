require_relative '../lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  describe '#insult' do
    it 'makes the target feel hurt' do
      expect(player2).to receive(:feel_hurt)
      game.insult(player2)
    end
  end
end
