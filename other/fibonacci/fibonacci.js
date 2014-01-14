var nthFibonacci = function(n) {
  if (n < 3) {
    return 1;
  }
  else {
    return nthFibonacci(n-1) + nthFibonacci(n-2);
  }
}

var firstTen = [];
for (var i=1; i < 10; i++) {
  firstTen.push(nthFibonacci(i));
}

console.log('First ten fibonacci numbers are ' + firstTen);

console.log(nthFibonacci(7)===13);
console.log(nthFibonacci(1)===1);
console.log(nthFibonacci(2)===1);
