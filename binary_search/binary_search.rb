def binary_search(array, x, i = nil)
  # searches and returns index of x if it is in the array
  # assumes array is sorted; returns -1 if not in array
  i ||= array.length / 2

end



puts binary_search([1,3,4,7,9], 7) == 3
puts binary_search([1,3,4,7,9], 1) == 0
puts binary_search([1,3,7,9], 9) == 3
puts binary_search([1,3,7,9], 47) == -1