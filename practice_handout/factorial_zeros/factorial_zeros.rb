def assert(recevied, expected)
  if received == expected
    puts 'test passed'
  else
    raise "TEST FAILED: expected#{expected.inspect}, received #{received.inspect}"
  end
end

def factorial_zeros(n)

end


assert(factorial_zeros(1) == 0)
assert(factorial_zeros(10) == 2)
assert(factorial_zeros(100) == 24)