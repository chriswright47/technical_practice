var Node = function(value, successor) {
  this.value = value;
  this.successor = successor;
}

var List = function(head) {
  this.head = head;
}

List.prototype.each = function(callback) {
  var node = this.head;
  while (node) {
    callback(node);
    node = node.successor;
  }
}

List.prototype.push = function(value) {
  this.tail().successor = new Node(value);
}

List.prototype.unshift = function(value) {
  return this.head = new Node(value, this.head);
}

List.prototype.tail = function() {
  var tail
  this.each(function(node) {
    if (node.successor === undefined) {
      tail = node;
    }
  })
  return tail;
}

List.prototype.find = function(value) {
  return this.find_node(this.head, value)
}

List.prototype.find_node = function(node, value) {
  if ( !node || value === node.value) {
    return node;
  }
  else {
    return this.find_node(node.successor, value)
  }
}

List.prototype.find_all = function(value) {
  var matches = [];
  this.each(function(node) {
    if (node.value === value) {
      matches.push(node);
    }
  });
  return matches;
}

c = new Node(23);
b = new Node(47, c);
a = new Node('original head', b);

list = new List(a);

list.each(function(node) {
  console.log(node.value);
});

console.log(list.find(47) === b);
console.log(list.find_all(47).length === 1);
console.log(list.find_all(23)[0] === c);

list.push(47);
x = list.unshift('new head');

console.log(list.find_all(47).length === 2);
console.log(list.find_all(47)[0] === list.find(47));
console.log(list.head === x);