Node = Struct.new(:value, :left, :right)

Tree = Struct.new(:root) do

  def find(value)
    return -1 if root.nil?
    if root.value == value
      return root
    elsif root.value > value
      #traverse left
      Tree.new(root.left).find(value)
    else
      #traverse right
      Tree.new(root.right).find(value)
    end
  end

end

c = Node.new(3, nil, nil)
b = Node.new(7, nil, nil)
a = Node.new(6, c, b)

tree = Tree.new(a)


puts tree.find(7) == b
puts tree.find(6) == a
puts tree.find(3) == c
puts tree.find(4) == -1
