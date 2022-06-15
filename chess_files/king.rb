require_relative "piece.rb"
require_relative "stepable.rb"

class King
include Stepable


  def symbol
    if self.color = :black
      @symbol = ♚
    else
      @symbol = ♔
    end

  end

  protected

  def move_diffs
    @move_diffs = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
  end


end