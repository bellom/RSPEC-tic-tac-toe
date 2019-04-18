require './board'

describe Board do
    before(:all) do
        @board = Board.new
    end

    describe '#initialize board' do
        it 'create an instance of board class with new array' do
            answer = Array.new(9, "")
            expect (@board.board_values).to eql(answer)
        end
    end

    describe "#update_field_values" do
        it "create user position with legend number pick" do
            @board.update_field_values("x", 1)
            expect (@board.board_values[0]).to(equal("x"))
        end
    end

    describe '#board_full?' do
    it 'returns true if board full' do
      @board.grid.fill('X')
      expect(@board.board_full?).to eq(true)
    end
  end

end



# expect(5).to(equal(1))


# def update_field_values (token, location)
#     @board_values[location - 1] = token
# end