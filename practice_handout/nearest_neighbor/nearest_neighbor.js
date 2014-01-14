// If you have an array of people described by name (string)
// and position (int). Each person has three friends, who
// are the three people with the closest position numbers
// to that person. Implement an algorithm that will find the
// three friends of a given person.

// Answer: sort the people by position numbers, then you only
// have to check the three people before and after a person.

var min = function(x,y) {
  if (x < y) {return x}
  return y;
}

var max = function(x,y) {
  if (x > y) {return x}
  return y;
}

var Person = function(name, position) {
  this.name = name;
  this.position = position;
  this.neighbors = [];
}

var mergeSort = function(array) {
  if (array.length <= 1) {return array}
  var mid = Math.floor(array.length / 2);
  var firstHalf = mergeSort(array.slice(0, mid));
  var secondHalf = mergeSort(array.slice(mid));
  return mergeByPosition(firstHalf, secondHalf);
}

var mergeByPosition = function(a, b) {
  var result = [];
  while (a.length > 0 && b.length > 0) {
    if (a[0].position < b[0].position) {
      result.push(a.shift());
    }
    else {result.push(b.shift());}
  }
  while (a.length > 0) {
    result.push(a.shift());
  }
  while (b.length > 0) {
    result.push(b.shift());
  }
  return result;
}

Array.prototype.eq = function(otherArray) {
  if (this.length !== otherArray.length) {
    return false;
  }
  for (var i in this) {
    if (this[i] !== otherArray[i]) {
      return false;
    }
  }
  return true;
}

var populateNeighbors = function(peopleArray) {
  var orderedArray = mergeSort(peopleArray)
  for (var i in orderedArray) {
    var position = orderedArray[i].position;
    orderedArray[i].neighbors = findNeighbors(orderedArray.slice(0), i, position);
  }
}

var findNeighbors = function(array, i, position) {
  array.splice(i, 1);
  var possibles = array.slice(max(0, i-3), 6);
  var neighbors = [];
  while (neighbors.length < 3) {
    neighbors.push(possibles.splice(nearestNeighborIndex(possibles, position), 1)[0])
    // console.log('possibles');
    // console.log(possibles);
    // console.log('neighbors');
    // console.log(neighbors);
  }
  return neighbors;
}

var nearestNeighborIndex = function(array, position) {
  var distance = Math.abs(position - array[0].position);
  var index = 0;
  for (var j in array) {
    var new_distance = Math.abs(array[j].position - position)
    if (new_distance < distance) {
      distance = new_distance;
      index = j;
    }
  }
  return index;
}

a = new Person('Chris', 3)
b = new Person('Ross', 4)
c = new Person('Rachel', 3)
d = new Person('Matt', 10)
e = new Person('Julie', 7)
f = new Person('Sam', 8)

people = [a,b,c,d,e,f];

populateNeighbors(people)
// each element of people now knows its neighbors
console.log(f.neighbors.eq([e,d,b]))
console.log(a.neighbors.eq([c,b,e]))

