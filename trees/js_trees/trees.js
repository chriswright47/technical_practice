var Node = function(value, left, right) {
  this.value = value;
  this.left = left;
  this.right = right;
};

var Tree = function(root) {
  this.root = root;
};

Tree.prototype.find = function(value) {
  return this.find_node(this.root, value);
};

Tree.prototype.find_node = function(node, value) {

  if (!node || value === node.value) {
    return node;
  }
  else if (value < node.value) {
    return this.find_node(node.left, value);
  }
  else {
    return this.find_node(node.right, value);
  }
};

c = new Node(3, undefined, undefined);
b = new Node(7, undefined, undefined);
a = new Node(4, c, b);

tree = new Tree(a);

console.log(tree);
console.log(tree.find(4) === a);
console.log(tree.find(3) === c);
console.log(tree.find(7) === b);
console.log(tree.find(5) === undefined);
console.log(tree.find(47) === undefined);