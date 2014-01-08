def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, received #{received.inspect}"
  end
  puts 'test passed'
end

# a pivot index is a number in the array where all the sum of all numbers to the left
# is equal to the sum of all numbers to the right (neither sum includes the number at index)
# this method returns the index of the pivot if it exists, -1 if not
def pivot_index(array)
  left_sum, right_sum, i, j = 0, 0, 0, -1
  left_sum += array[i]
  right_sum += array[j]
  i += 1
  j -= 1
  while i - j < array.length
    if left_sum < right_sum
      left_sum += array[i]
      i += 1
    elsif left_sum > right_sum
      right_sum += array[j]
      j -= 1
    else
      left_sum += array[i]
      right_sum += array[j]
      i += 1
      j -= 1
    end
  end
  left_sum == right_sum ? i : -1
end


assert(pivot_index([1,2,3,7,6]), 3)
assert(pivot_index([1,2,3,7,6].reverse), 1)
assert(pivot_index([1,2,3,7,47]), -1)

