// each takes an array and a function to perform on each element
var each = function(array, callback) {
  for (i=0; i < array.length; i++) {
    callback(array[i]);
  }
}

// map takes an array in as first argument (the original array),
// followed by a function defining how to map elements from
// the original array to new array
var map = function(array, mappingFunction) {
  newArray = [];
  each(array, function(x) {
    newArray.push(mappingFunction(x));
  });
  return newArray;
}

var array = [1,2,3,4,5]
each(array, function(x) {
  console.log(x);
});

var newArray = map(array, function(x) {
  return x*2;
});

console.log(newArray);

