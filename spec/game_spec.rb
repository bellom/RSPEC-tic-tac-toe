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

    describe '#switch_player' do
        it 'changes the current player' do
            result = @game.switch_player
            expect(result.name).to eql('dip') 
        end
    end

    describe '#over' do 
        it 'checks if game has ended' do
            @current_player = @player_2
            @current_player.add_cell(1)
            @current_player.add_cell(4)
            @current_player.add_cell(7)
            result = @game.over?           
            expect(result).to be true 
        end
    end    

end