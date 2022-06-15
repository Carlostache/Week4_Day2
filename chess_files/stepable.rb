module Stepable

  def moves

    stepable_moves = []

    self.move_diffs.each do |step|
      new_pos = [self.pos[0] +  step[0], self.pos[-1] +  step[-1]]
      if new_pos.all? { |idx| (0..7).include?(idx) } || @board[new_pos].color != self.color
        stepable_moves << new_spot
      end
    end

    stepable_moves
  end

  private

  def move_diffs

  end

end