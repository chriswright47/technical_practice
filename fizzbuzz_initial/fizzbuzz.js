var fizzbuzz = function(number) {
  // returns 'fizz' if number is divisible by 5,
  // 'buzz' if number is divisible by 7,
  // and 'fizzbuzz' if number is divisible by 35
  var output = '';
  output += fizz(number);
  output += buzz(number);
  return output;
};

var fizz = function(number) {
  if (number % 5 === 0) {
    return 'fizz';
  }
  return '';
}

var buzz = function(number) {
  if (number % 7 === 0) {
    return 'buzz';
  }
  return '';
}

console.log(fizzbuzz(3) === '')
console.log(fizzbuzz(5) === 'fizz')
console.log(fizzbuzz(7) === 'buzz')
console.log(fizzbuzz(28) === 'buzz')
console.log(fizzbuzz(25) === 'fizz')
console.log(fizzbuzz(49) === 'buzz')
console.log(fizzbuzz(35) === 'fizzbuzz')

