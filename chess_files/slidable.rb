module Slidable

  HORIZONTAL_DIRS: [[1,0], [0,1], [-1,0], [0,-1]]

  DIAGONAL_DIRS: [[1,1], [-1,-1], [-1,1], [1,-1]]

  def horizontal_dirs 
    
    horizontal_moves = []

    HORIZONTAL_DIRS.each do |dir|
      horizonatal_moves += grow_unblocked_moves_in_dir(dir)
    end

    horizontal_moves
  
  end

  def diagonal_dirs

    diagonal_moves = []

    DIAGONAL_DIRS.each do |dir|
      diagonal_moves += grow_unblocked_moves_in_dir(dir)
    end

    diagonal_moves
  
  end

  def move

  end

  private
  
  def move_dirs
    raise "No move_dirs method from slidable module"
  end

  def grow_unblocked_moves_in_dir(dir)

    moves = []

    new_pos = self.pos

    until !new_pos.any? { |idx| (0..7).include?(idx) } || @board[new_pos].color == self.color
      new_pos = [self.pos[0] + dir[0], self.pos[1]  + dir[1]]
        if @board[new_pos].color != self.color
          moves << new_pos
          break
        elsif !new_pos.any? { |idx| (0..7).include?(idx) } || @board[new_pos].color == self.color
          break
        else
          moves << new_pos
        end
    end
    
    moves
  end


end