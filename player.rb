class Player
  attr_reader   :name, :token, :cells_chosen

  def initialize(name,token,board)
    @board = board
    # @selected_token = selected
    @name = name
    @token = token
    @cells_chosen = []
  end

  def add_cell(cell_number)
    @cells_chosen.push(cell_number)
  end

  # def get_name(player)
  #   return player.name
  # end

  # def get_name(player)
  #   puts "Welcome, #{player}, what is your name?"
  #   gets.chomp
  # end

  # def get_token(player_name)
  #   if @selected_token.nil?
  #     puts "Thanks #{player_name}! What token would you like, 'X' or 'O'?"
  #     token = gets.chomp.upcase
  #     while token != "X" && token != "O"
  #       puts "That is not a valid entry, please select 'X' or 'O'."
  #       token = gets.chomp.upcase
  #     end
  #     @selected_token = token
  #   else
  #     token = @selected_token == "X" ? "O" : "X"
  #     puts "#{player_name}, your token will be '#{token}'"
  #   end
  #   token
  # end

  def get_location(current_player, location_index)
    #puts "Your turn, #{current_player}! Choose a space."
    location = location_index
    until location.between?(1, 9) && @board.board_values[location - 1] == " "
      unless location.between?(1, 9)
        puts "You need to select a value from 1 to 9. Please select again:"
        location = location_index
      end
      unless @board.board_values[location - 1] == " "
        puts "This location has already been selected. Try again:"
        location = location_index
      end
    end
    location
  end
end