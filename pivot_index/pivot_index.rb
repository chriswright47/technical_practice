def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, received #{received.inspect}"
  end
  puts 'test passed'
end

def pivot_index(array)

end


assert(pivot_index([1,2,3,7,6]), 3)
assert(pivot_index([1,2,3,7,47]), -1)

