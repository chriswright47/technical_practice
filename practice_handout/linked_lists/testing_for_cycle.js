var Node = function(value, successor) {
  this.value = value;
  this.successor = successor;
}

var List = function(head) {
  this.head = head;
}

List.prototype.cyclic = function() {
  a = this.head;
  b = this.head;
  while (a.successor && b.successor) {
    a = a.successor;
    b = b.successor.successor;
    if (a === b) {
      return true;
    }
  }
  return false;
}

c = new Node(47)
b = new Node(23,. c)
a = new Node(1, b)
c.successor = a

list = new List(a)

console.log(list.cyclic())