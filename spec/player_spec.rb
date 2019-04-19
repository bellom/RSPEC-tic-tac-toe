require './board'
require './player'

describe Player do 
    before(:all) do
        @board = Board.new
        @player = Player.new("tim", "x",@board)
    end

    describe '#add_cell' do
        it 'create new cell' do 
            result = @player.add_cell(2)
            expect(result).to eql([2])
        end
    end

    describe '#get_location' do
        it 'getting player location' do 
            result = @player.get_location(@player.name, 1)
            expect(result).to eql(1)
        end
    end
end