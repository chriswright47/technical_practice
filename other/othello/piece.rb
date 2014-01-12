Piece = Struct.new(:color) do
  def to_s
    return self.color[0].upcase
  end
end