// If you have an array of people described by name (string)
// and position (int). Each person has three friends, who
// are the three people with the closest position numbers
// to that person. Implement an algorithm that will find the
// three friends of a given person.

// Answer: sort the people by position numbers, then you only
// have to check the three people before and after a person.

var mergeSort = function(array) {
  if (array.length <= 1) {return array}
  var mid = Math.floor(array.length / 2);
  var firstHalf = mergeSort(array.slice(0, mid));
  var secondHalf = mergeSort(array.slice(mid));
  return merge(firstHalf, secondHalf);
}

var merge = function(a, b) {
  var result = [];
  while (a.length > 0 && b.length > 0) {
    if (a[0] < b[0]) {
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

console.log(mergeSort([1,4,3,2,5,3,1,1,7]).eq([1,1,1,2,3,3,4,5,7]));