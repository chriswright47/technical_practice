// this method takes in a string that contains words seperated
// by spaces and reverses the order of the words without reversing
// the characters in the words themselves
var easy_reverse_words = function(string) {
  return string.split(' ').reverse().join(' ');
}

console.log(easy_reverse_words('this is a test') === 'test a is this');

var reverse_words = function(string) {
  var reversed = reverse_chars(string).split(' ');
  for (var i in reversed) {
    reversed[i] = reverse_chars(reversed[i]);
  }
  return reversed.join(' ');
}

var reverse_chars = function(string) {
  var reversed_chars = '';
  for (var i in string) {
    reversed_chars += string[string.length-i-1];
  }
  return reversed_chars;
}

console.log(reverse_chars('testing chars')==='srahc gnitset')
console.log(reverse_words('this is a test') === 'test a is this');
