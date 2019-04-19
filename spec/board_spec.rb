require './board'

describe "#update_field_values" do
    it "create user position with legend number picked" do
        @board = Board.new
        @board.update_field_values("x", 1)
        expect(@board.board_values[0]).to eql("x")
    end
end
