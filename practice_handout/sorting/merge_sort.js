var mergeSort = function(array) {
  if (array.length <= 1) {return array};
  var middle = array.length / 2;
  leftHalf = mergeSort(array.slice(0, middle));
  rightHalf = mergeSort(array.slice(middle, array.length));
  console.log('left, right')
  console.log(leftHalf)
  console.log(rightHalf)
  return merge(leftHalf, rightHalf);
}

var merge = function(a,b) {
  var merged = [];
  while (a.length > 0 && b.length > 0) {
    if (a[0] < b[0]) {
      merged.push(a.shift());
    }
    else {
      merged.push(b.shift());
    }
  }
  while (a.length > 0) {
    merged.push(a.shift());
  }
  while (b.length > 0) {
    merged.push(b.shift());
  }
  return merged;
}

console.log(mergeSort([1,2,3,4,5]))//===[1,2,3,4,5])
// console.log(mergeSort([1,5,4,2,3]))//===[1,2,3,4,5])