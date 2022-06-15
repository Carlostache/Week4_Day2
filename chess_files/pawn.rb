require_relative 'piece.rb'

class Pawn

   def symbol
    if self.color == :black
      @symbol = 	♟
    else
      @symbol = ♙
    end

  end

  def moves
    if !at_start_row?
      new_pos = [self.forward_dir + pos[0], pos[1]]
    else

    end
    if new_pos.all? { }
  end

  def at_start_row?
    if self.color == :black && self.pos[0] == 6
      return true
    elsif self.color == :white && self.pos[0] == 1
      return true
    end

    False

  end

  def forward_dir
    if color == :black
      direction_multiplier = [-1,-1]
    else
      direction_multiplier = [1,1]
    end


  end

  def forward_steps
    if !at_start_row
      forward_steps = 1
    else
      forward_steps = 2
    end

  end

  def side_attacks


  end

end