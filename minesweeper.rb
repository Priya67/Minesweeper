require_relative './board.rb'

class Minesweeper
  def initialize
    @board = Board.new
  end


  def play
    @board.render
    pos = get_input

  end

  def get_input
    puts "Input:"
    pos = parse_pos(gets.chomp)
    @board.clicked_already?(pos)
  end

  def parse_pos(string)
    string.split(",").map { |element| element.to_i}
  end
end
