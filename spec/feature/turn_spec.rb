require 'turn'

describe Turn do 
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Dave", "player_shape" => :rock, "opponent_shape" => :scissors } }
    
  describe '#player_name' do
    it 'returns player name' do 
      expect(turn.player_name).to eq 'Dave'
    end
  end

  describe '#player_shape' do
    it 'returns player shape' do 
      expect(turn.player_shape).to eq :rock
    end
  end

  describe '#opponent_shape' do
    it 'returns opponent shape' do 
      expect(turn.opponent_shape).to eq :scissors
    end
  end

  context 'end game' do
    describe '#win?' do
      it 'returns true if player_shape is :rock and opponent_shape is :scissors ' do
        expect(turn.win?).to eq true
      end
    end
  end
end
