var getPermutations = function(string) {
  if (string.length === 0) {
    return [''];
  }
  var first = string[0];
  var remainder = string.substring(1);
  var words = getPermutations(remainder);
  var permutations = [];
  for (var i in words) {
    for (var j = 0; j <= i.length; j++ )
      permutations.push(insertChar(first, words[i], j));
  }
  return permutations;
}

var insertChar = function(character, word, index) {
  var head = word.substring(0, index);
  var tail = word.substring(index);
  return head + character + tail;
}

console.log("Permutations of 'abc' are:");
console.log(getPermutations('abc'));