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

    describe Factorial do
        it "finds the factorial of 5" do
          calculator = Factorial.new
          expect(calculator.factorial_of(5)).to eq(120)
        end
    end

end



# expect(5).to(equal(1))


# def update_field_values (token, location)
#     @board_values[location - 1] = token
# end