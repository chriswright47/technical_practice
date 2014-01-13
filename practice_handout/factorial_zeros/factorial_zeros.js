// given a number (e.g. 100) say how many trailing zeros
// the factorial has (e.g. 100!)
var factorial_zeros = function(n) {
  var twoCount = 0
  var fiveCount = 0
  for (var i=2; i <= n; i ++) {
    twoCount += countTwos(i);
    fiveCount += countFives(i);
  }
  return minimum([twoCount, fiveCount]);
}
var countFives = function(x) {
  var count = 0;
  while (x % 5 === 0) {
    count += 1;
    x /= 5;
  }
  return count;
}

var countTwos = function(x) {
  var count = 0;
  while (x % 2 === 0) {
    count += 1;
    x /= 2;
  }
  return count;
}

var minimum = function(array) {
  var min = array[0]
  for (var i in array) {
    if (array[i] < min) {
      min = array[i];
    }
  }
  return min;
}


console.log(minimum([1,2,3]) === 1);
console.log(minimum([3,5,6,2]) === 2);
console.log(countFives(2) === 0);
console.log(countFives(5) === 1);
console.log(countFives(125) === 3);
console.log(countTwos(1) === 0);
console.log(countTwos(2) === 1);
console.log(countTwos(32) === 5);
console.log(factorial_zeros(2) === 0);
console.log(factorial_zeros(5) === 1);

console.log(factorial_zeros(100));