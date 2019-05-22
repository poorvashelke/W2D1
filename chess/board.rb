require_relative "piece.rb"

class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8){Array.new(8)}
    @rows[0] = @rows[0].map.with_index {|ele, i| ele = Piece.new("White",self,[0,i])}
    @rows[1] = @rows[1].map.with_index {|ele, i| ele = Pawns.new("White", self,[1,i])}
    @rows[2] = @rows[2].map.with_index {|ele, i| ele = Piece.new("NULL",self,[2,i])}
    @rows[3] = @rows[3].map.with_index {|ele, i| ele = Piece.new("NULL",self,[3,i])}
    @rows[4] = @rows[4].map.with_index {|ele, i| ele = Piece.new("NULL",self,[4,i])}
    @rows[5] = @rows[5].map.with_index {|ele, i| ele = Piece.new("NULL",self,[5,i])}
    @rows[6] = @rows[6].map.with_index {|ele, i| ele = Pawns.new("Black",self,[6,i])}
    @rows[7] = @rows[7].map.with_index {|ele, i| ele = Piece.new("Black",self,[7,i])}

  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)
    # rows[pos] = val
  end

  def move_piece(start_pos, end_pos)
    valid_pos?(start_pos)
    valid_pos?(end_pos)
    
    x, y = start_pos
    a, b = end_pos
    # begin
    # raise "No piece found" if rows[x][y] == nil 
    # raise "Out of Bounds" if x > 8 || y > 8
    
  # rescue NoMethodError
    
    # end
    rows[a][b] = rows[x][y] 
    rows[x][y] = nil
  end 
 
  
  def valid_pos?(pos)
    x, y = pos
    raise OffBoardError if x.negative? || y.negative? || x > 7 || y > 7
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

class OffBoardError < StandardError
  
end


# b = Board.new
# b.move_piece([0,0], [10,0])