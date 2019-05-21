require_relative "piece.rb"

class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8){Array.new(8)}
    rows[0][0] = Piece.new("white", [0,0])
  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)
    # rows[pos] = val
  end

  def move_piece(start_pos, end_pos)
    x, y = start_pos
    a, b = end_pos
    begin
    raise "No piece found" if rows[x][y] == nil 
    raise "Out of Bounds" if x > 8 || y > 8
    
  rescue NoMethodError
    
    end
    rows[a][b] = rows[x][y] 
    rows[x][y] = nil
  end 

  def valid_pos?(pos)

  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)

  end

  def in_check?(color)

  end
  def find_king(color)

  end

  def pieces

  end

  def dup

  end

  def move_piece!(color, start_pos, end_pos)

  end

end

b = Board.new
b.move_piece([0,0], [10,0])