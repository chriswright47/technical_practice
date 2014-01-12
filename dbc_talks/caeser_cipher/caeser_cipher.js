var encodeChar = function(char, shift) {
  if (/[A-Za-z]/.test(char)) {
    if (/[A-Z]/.test(char)) {
      var offset = (ord(char) - ord("A") + shift) % 26;
      return chr(ord("A") + offset)
    }
    else {
      var offset = (ord(char) - ord("a") + shift) % 26;
      return chr(ord('a') + offset)
    }
  }
  else { return char }
}

var ord = function(char) {
  return char.charCodeAt(0);
}

var chr = function(int) {
  return String.fromCharCode(int);
}






console.log(encodeChar("A", 3) === "D")
console.log(encodeChar("a", 4) === "e")
console.log(encodeChar("Z", 2) === "B")
console.log(encodeChar("z", 1) === "a")