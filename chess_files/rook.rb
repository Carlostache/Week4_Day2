require_relative "piece.rb"
require_relative "slidable.rb"

class Rook < Piece
  include Slidable

  def initialize
    super
    @symbol = self.symbol

    
    @move_dirs = []
  end

  def symbol
    if self.color = :black
      @symbol = ♜
    else
      @symbol = ♖
    end
  end

  private

  def move_dirs
    @move_dirs += horizontal_dirs
  end

end