Node = Struct.new(:value, :left, :right) do
  def self.build(args)
    self.new(args[:value], args[:left], args[:right])
  end
end

Tree = Struct.new(:root) do

  def find(value)
    find_node(root, value)
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

c = Node.build(value: 3, left: nil, right: nil)
b = Node.build(value: 7, left: nil, right: nil)
a = Node.build(value: 6, left: c, right: b)

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
