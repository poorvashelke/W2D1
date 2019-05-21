class Piece
  attr_reader :color
  def initialize(color, pos)
    @color = color
    # @board = board
    @pos = pos
  end

  def inspect
    color
  end
  

end


class NullPiece < Piece

  def initialize
    super
    @color = null
  end

  
end