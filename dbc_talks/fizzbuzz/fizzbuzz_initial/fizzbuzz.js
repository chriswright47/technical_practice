Object.prototype.fizz = function() {
  if (this % 5 === 0) {return 'fizz';}
  return '';
}

Object.prototype.buzz = function() {
  if (this % 7 === 0) {return 'buzz';}
  return '';
}

Object.prototype.fizzbuzz = function() {
  var output = '';
  output += this.fizz();
  output += this.buzz();
  return output;
}

arr = [0,1,2,3,4,5,6,7,8,9,10,14,15,35]
for (i=0; i<arr.length; i++) {
  console.log('For ' + arr[i] + ' ' + arr[i].fizzbuzz());
}

// var fizzbuzz = function(number) {
//   // returns 'fizz' if number is divisible by 5,
//   // 'buzz' if number is divisible by 7,
//   // and 'fizzbuzz' if number is divisible by 35
//   var output = '';
//   output += fizz(number);
//   output += buzz(number);
//   return output;
// };

// var fizz = function(number) {
//   if (number % 5 === 0) {
//     return 'fizz';
//   }
//   return '';
// }

// var buzz = function(number) {
//   if (number % 7 === 0) {
//     return 'buzz';
//   }
//   return '';
// }

// console.log(fizzbuzz(3) === '')
// console.log(fizzbuzz(5) === 'fizz')
// console.log(fizzbuzz(7) === 'buzz')
// console.log(fizzbuzz(28) === 'buzz')
// console.log(fizzbuzz(25) === 'fizz')
// console.log(fizzbuzz(49) === 'buzz')
// console.log(fizzbuzz(35) === 'fizzbuzz')
// console.log(fizzbuzz(70) === 'fizzbuzz')

