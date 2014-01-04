def binary_search(array, x, shift=0)
  # searches and returns index of x if it is in the array
  # assumes array is sorted; returns -1 if not in array
  return -1 if array.empty?
  i = array.length / 2
  if array[i] == x
    return i + shift
  elsif x > array[i]
    shift = i + 1
    return binary_search(array.slice(i + 1, array.length - 1), x, shift)
  else
    return binary_search(array.slice(0, i), x, shift)
  end


end



puts binary_search([1,3,4,7,9], 7) == 3
puts binary_search([1,3,4,7,9], 1) == 0
puts binary_search([1,3,7,9], 9) == 3
puts binary_search([1,3,7,9], 47) == -1