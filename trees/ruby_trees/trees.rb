Node = Struct.new(:value, :left, :right)

Tree = Struct.new(:root) do

  def find(value)
    find_node(self.root, value)
  end

  def insert(value)
    root = insert_node(self.root, value)
  end

  private
  def find_node(node, value)
    return node if node.nil? || value == node.value
    value > node.value ? find_node(node.right, value) : find_node(node.left, value)
  end

  def insert_node(node, value)
    return Node.new(value, nil, nil) if node.nil?
    if value < node.value
      node.left = insert_node(node.left, value)
    else
      node.right = insert_node(node.right, value)
    end
    node
  end

end

c = Node.new(3, nil, nil)
b = Node.new(7, nil, nil)
a = Node.new(6, c, b)

tree = Tree.new(a)


puts tree.find(7) == b
puts tree.find(6) == a
puts tree.find(3) == c
puts tree.find(4) == nil
puts tree.find(47) == nil

tree.insert(47)

puts tree.find(7) == b
puts tree.find(6) == a
puts tree.find(3) == c
puts tree.find(4) == nil
puts tree.find(47) != nil
puts tree.find(47) == b.right
