require './game'
require './player'
require './board'

describe Game do
    before(:all) do
        @board = Board.new
        @player_1 = Player.new("tim", "x", @board)
        @player_2 = Player.new("dip", "o", @board)
        @game = Game.new(@player_1, @player_2, @board)
    end

    describe '#play_turn' do
        it 'create player turn' do
            result = @game.play_turn(1)
            expect(result).to eql([1])
        end
    end

end