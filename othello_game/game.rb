Game = Struct.new(:board) do
  def self.build
    board = Array.new(10) {Array.new(10)}
    self.new(board)
  end

  def switch_colors
    self.board.each_with_index do |row, i|
      row.each_with_index do |piece, j|
        if piece
          if new_color = surrounding_color_(i,j)
            piece.color = new_color
          end
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

end