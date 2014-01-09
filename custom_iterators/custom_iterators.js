var each = function(array, callback) {
  for (i=0; i < array.length; i++) {
    callback(array[i]);
  }
}

var array = [1,2,3,4,5]
each(array, function(x) {
  console.log(x);
});
each(array, function(x) {
  console.log(2 * x);
});
