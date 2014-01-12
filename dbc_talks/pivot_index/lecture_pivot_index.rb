def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, received #{received.inspect}"
  end
  puts 'test passed'
end

def pivot_index(array)
  total = array.inject(&:+)
  running_total = 0
  array.each_index do |i|
    if 2 * running_total + array[i] == total
      return i
    end
    running_total += array[i]
  end
  -1

end

assert(pivot_index([1,2,3,7,6]), 3)
assert(pivot_index([1,2,3,7,6].reverse), 1)
assert(pivot_index([1,2,3,7,47]), -1)
assert(pivot_index([1,2,3,6]), -1)
assert(pivot_index([1,2]), -1)
assert(pivot_index([1,2,3,7,5,1]), 3)
assert(pivot_index([1]), 0)

start = Time.now
100000.times {
  assert(pivot_index([1,2,3,7,6]), 3)
}
finish = Time.now

p finish - start