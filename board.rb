require_relative './tile.rb'

class Board
  def initialize
    @board = Array.new(9) { Array.new(9) {} }
    @board = place_mines(@board)
    @board = place_values(@board)
  end

  def place_mines(board)
    board.map do |rows|
      rows[0] = Tile.new("x")
      rows.shuffle
    end
  end

  def place_values(board)

  end

  def render

  end

  def clicked_already?(pos)
    x, y = pos
    @board[x][y].revealed
  end
end
