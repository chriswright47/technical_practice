def binary_search(array, x, shift=0)
  # searches and returns index of x if it is in the array
  # assumes array is sorted; returns -1 if not in array
  return false if array.empty?
  i = array.length / 2
  if array[i] == x
    return i + shift
  elsif x > array[i]
    shift += i + 1
    return binary_search(array[i+1..-1], x, shift)
  else
    return binary_search(array[0..i-1], x, shift)
  end
end

def fast_binary_search(a, lo, hi, x)
  return false if lo > hi
  mid = (lo + hi) / 2
  if a[mid] == x
    mid
  elsif a[mid] < x
    fast_binary_search(a, mid + 1, hi, x)
  else
    fast_binary_search(a, lo, mid -1, x)
  end
end



puts binary_search([1,3,4,7,9], 7) == 3
puts binary_search([1,3,4,7,9], 1) == 0
puts binary_search([1,3,7,9], 9) == 3
puts binary_search([1,3,7,9], 47) == false
puts binary_search((1..1000).to_a, 47) == 46
start = Time.now
puts binary_search((1..100000000).to_a, 47) == 46
finish = Time.now
puts "initial binary search: #{finish - start} seconds"

start = Time.now
A = (1..100000000).to_a
puts fast_binary_search(A, 0, A.length - 1, 47) == 46
finish = Time.now
puts "initial fast binary search: #{finish - start} seconds"
