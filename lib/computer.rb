require './lib/player'

class Computer < Player
   

  def initialize(board)
    super(board)
  end

  def select_space
    symbol = board.hash.to_a.sample.first
    board.hash[symbol]
  end # return Space


  def board_setup

    row = [*'A'..'D']
    column = [*'0'..'3']
    symbol = (row.sample + column.sample).to_sym

    r1 = @board.hash[symbol]
    r2 = adjacents(r1).sample
    
    ship(r1, r2)

    puts "Computer's ships are set"
    puts ""
    return "board is set"
  end

end