require "byebug"

class Piece

  attr_reader :pos, :color

  attr_writer :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos


  end

  def to_s

  end

  def empty?
    @board[pos] == NullPiece
  end

  def valid_moves

  end

  def pos=(val)
    self.pos = val

  end

  def symbol
    raise NotImplementedError
  end

  private
  
  def move_to_check?(end_pos)


  end

end

