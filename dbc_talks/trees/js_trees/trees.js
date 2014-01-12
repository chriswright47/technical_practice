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

Tree.prototype.insert = function(value) {
  this.root = this.insert_node(this.root, value);
};

Tree.prototype.insert_node = function(node, value) {
  if (node === undefined) {
    return new Node(value);
  }
  else if (value < node.value) {
    node.left = this.insert_node(node.left, value);
  }
  else {
    node.right = this.insert_node(node.right, value);
  }
  return node;
}

c = new Node(3);
b = new Node(7);
a = new Node(4);
a.left = c;
a.right = b;

tree = new Tree();
tree.root = a;

console.log(tree.find(4) === a);
console.log(tree.find(3) === c);
console.log(tree.find(7) === b);
console.log(tree.find(5) === undefined);
console.log(tree.find(47) === undefined);

tree.insert(47);
console.log(tree.find(47) != undefined);
console.log(tree.find(47) === b.right);
