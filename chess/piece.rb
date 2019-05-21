class Piece
  attr_reader :color
  def initialize(color, pos)
    @color = color
    # @board = board
    @pos = pos
  end

  def inspect
    'P'
  end
  

end


# class NullPiece < Piece

#   def initialize
#     super
#     @color = null
#   end

  
# end

# class Rook < Piece

#   def initialize
#     super
#   end
# end
