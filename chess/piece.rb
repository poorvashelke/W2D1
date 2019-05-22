module Slidable
  def moves
    if self.is_a?(Rook)
      possible_moves = []
      x, y = self.pos
      (0..7).each {|i| possible_moves << [i, y]}
      (0..7).each {|i| possible_moves << [x, i]}
    end
  end
end


class Piece
  attr_reader :color, :board, :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def moves

  end

  def inspect
    "#{@color[0..0]}"
  end
end


class NullPiece < Piece

  def initialize
    super
    @color = null
  end

  
end

class Rook < Piece

  def initialize
    super
  end
end

class Queen < Piece

  def initialize
    super
  end
end

class Bishop < Piece

  def initialize
    super
  end
end

class KnightKing < Piece

end

class Pawns < Piece

  def moves
    possible_moves = []
    x, y = self.pos
    self.color == "White" ? possible_moves << [x - 1, y] : possible_moves << [x + 1, y]
  end
  
end