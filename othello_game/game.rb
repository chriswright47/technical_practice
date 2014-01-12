Game = Struct.new(:board) do
  def self.build
    board = Array.new(10) {Array.new(10)}
    self.new(board)
  end

  def finished?
  end

  def switch_colors
    self.board.each_with_index do |row, i|
      row.each_with_index do |piece, j|
        if piece
          piece.color = surrounding_color(i,j) || piece.color
        end
      end
    end
  end

  def to_s
    print '   '
    10.times {|i| print " #{i}  "}
    puts ''
    self.board.each_with_index do |row, i|
      print i
      row.each do |piece|
        print ' | '
        if piece
          print piece
        else
          print ' '
        end
      end
      puts ' |'
      puts '  -----------------------------------------' if i < 9
    end
    return ''
  end

  private
  def surrounding_color(i,j)
    if vertical_surround?(i,j)
      return self.board[i+1][j].color
    elsif horizontal_surround?(i,j)
      return self.board[i][j+1].color
    else
      nil
    end
  end

  def vertical_surround?(i,j)
    if (1..8).to_a.include?(i) && (board[i-1][j] && board[i+1][j])
      board[i-1][j].color == board[i+1][j].color
    end
  end

  def horizontal_surround?(i,j)
    if (1..8).to_a.include?(j) && (board[i][j-1] && board[i][j+1])
      board[i][j-1].color == board[i][j+1].color
    end
  end

end