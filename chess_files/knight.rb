require_relative "piece.rb"
require_relative "stepable.rb"


class Knight
  include Stepable


  def symbol
    if self.color = :black
      @symbol = ♞
    else
      @symbol = ♘
    end

  end

  protected

  def move_diffs
    @move_diffs = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
  end


end