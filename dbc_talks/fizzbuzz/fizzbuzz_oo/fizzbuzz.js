var assert = function(received, expected) {
  if (received !== expected) {
    console.log('TEST FAILED: expected ' + expected + '; got ' + received);
  }
  else {console.log("test passed")}
};

var FizzBuzz = function(prime1, prime2) {
  this.prime1 = prime1;
  this.prime2 = prime2;
};

FizzBuzz.prototype.fizzify = function(int) {
  if (int % this.prime1 === 0) {
    if (int % this.prime2 === 0) {
    return 'FizzBuzz';
    }
    else {return "Fizz"}
  }
  else {
    if (int % this.prime2 === 0) {
      return 'Buzz';
    }
    else {return int}
  }
}

fizzBuzz = new FizzBuzz(3,5);

assert(fizzBuzz.fizzify(1), 1);
assert(fizzBuzz.fizzify(3), 'Fizz');
assert(fizzBuzz.fizzify(5), 'Buzz');
assert(fizzBuzz.fizzify(15), 'FizzBuzz');
