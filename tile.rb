class Tile

  attr_accessor :value
  attr_reader :revealed

  def initialize(value)
    @value = value
    @revealed = false
  end

  def is_bomb?
    @value == "x"
  end

  def reveal
    @revealed = true
  end

  def to_s
    return @value if @revealed
    "?"
  end

end
