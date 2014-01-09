var pivotIndex = function(array) {
  var left_sum = 0;
  var total = sum(array);
  for (i=0; i<array.length; i++) {
    if (2 * left_sum + array[i] === total) {
      return i;
    }
    left_sum += array[i];
  }
  return -1;
}

var sum = function(array) {
  var total = 0;
  for (i=0; i<array.length; i++) {
    total += array[i];
  }
  return total;
}

console.log(pivotIndex([1,2,3,7,6]) === 3)
console.log(pivotIndex([1,2,3,7,5]) === -1)