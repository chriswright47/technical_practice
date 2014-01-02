Node = Struct.new(:value, :successor) do
  def self.build(args)
    self.new(args[:value], args[:successor])
  end
end

List = Struct.new(:head) do
  def self.build(args)
    self.new(args[:head])
  end

  def find(value)
    find_node(node: self.head, value: value)
  end

  def find_node(args)
    node, value = args[:node], args[:value]
    if !node || node.value == value
      return node
    else
      args[:node] = node.successor
      find_node(args)
    end
  end

end

c = Node.build(value: 47)
b = Node.build(value: 23, successor: c)
a = Node.build(value: 'original head', successor: b)

list = List.build(head: a)

puts list.head == a
puts list.head.successor == b
puts list.find('original head') == a
puts list.find(47) == c
puts list.find(46) == nil
