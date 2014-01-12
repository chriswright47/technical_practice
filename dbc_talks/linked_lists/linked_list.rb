Node = Struct.new(:value, :successor) do
  def self.build(args)
    self.new(args[:value], args[:successor])
  end
end

List = Struct.new(:head) do
  def self.build(args)
    self.new(args[:head])
  end

  def each
    node = self.head
    while node
      yield node
      node = node.successor
    end
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

  def unshift(value)
    self.head = Node.build(value: value, successor: self.head)
  end

  def push(value)
    self.tail.successor = Node.build(value: value)
  end

  def tail
    self.each{|node| return node if node.successor.nil?}
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
puts list.find(47) == list.tail
puts list.find(46) == nil

list.unshift('new head')
list.push('new tail')

puts list.find('new tail') == list.tail

puts list.find('new head') == list.head
