Node = Struct.new(:value, :successor)

List = Struct.new(:head) do
  def cyclic?()
    a, b = self.head, self.head
    while a.successor && b.successor
      a = a.successor
      b = b.successor.successor
      return true if a == b
    end
    false
  end
end

c = Node.new(47, nil)
b = Node.new(23, c)
a = Node.new(1, b)
x = Node.new(3, a)
y = Node.new(2, x)

list = List.new(a)

p list.cyclic?