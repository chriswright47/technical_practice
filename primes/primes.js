var nPrimes = function(n) {
  // returns a list of the first n primes
  if (n === 0) { return []; }
  if (n === 1) { return [2]; }
  var primes = [2];
  nextPrime = 3;
  while (primes.length < n) {
    primes.push(nextPrime);
    nextPrime = findNextPrime(primes);
  }
  return primes;
}

var primesUpTo = function(n) {
  // returns a list of primes up to n
  // This is implemented in Ruby filem so left blank here
}

var findNextPrime = function(primes) {
  x = primes.last() + 2;
  while (!isPrime(primes, x)) {
    x += 2;
  }
  return x;
}

var isPrime = function(knownPrimes, x) {
  for (i=0; i<knownPrimes.length; i++) {
    if (x%knownPrimes[i] === 0) {
      return false;
    }
  }
  return true;
}

Array.prototype.last = function() {
  return this[this.length - 1];
}
Array.prototype.eq = function(other) {
  if (this.length != other.length) {
    return false;
  }
  for (i=0; i<this.length; i++) {
    if (this[i] != other[i]) {
      return false;
    }
  }
  return true;
}

console.log(nPrimes(2).eq([2,3]));
console.log(nPrimes(1).eq([2]));
console.log(nPrimes(0).eq([]));
console.log(nPrimes(10).eq([2,3,5,7,11,13,17,19,23,29]))
