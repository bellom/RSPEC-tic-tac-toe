require './board'
require './player'
require './game'
require './game_cycle'
include Game_cycle

describe Game_cycle do
    before(:all) do
        @board = Board.new
        @player_1 = Player.new("tim", "x", @board)
        @player_2 = Player.new("dip", "o", @board)
    end

    describe '#game_cycle' do
        it 'runs the game till game.over returns true' do
            game_obj= Game.new(@player_1, @player_2, @board)
            result = game_cycle(game_obj)
            game_obj.play_turn(1)
            game_obj.play_turn(2)
            game_obj.play_turn(4)
            game_obj.play_turn(3)
            game_obj.play_turn(7)
            expect(result).to be true            
        end
    end
end