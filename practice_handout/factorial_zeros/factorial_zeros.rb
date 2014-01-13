def assert(received, expected)
  if received == expected
    puts 'test passed'
  else
    puts "TEST FAILED: expected #{expected.inspect}, received #{received.inspect}"
  end
end

def factorial_zeros(n)
  two_count, five_count = 0, 0
  (1..n).each do |i|
    two_count += count_twos(i)
    five_count += count_fives(i)
  end
  return [two_count, five_count].min
end


assert(factorial_zeros(1), 0)
assert(factorial_zeros(10), 2)
assert(factorial_zeros(100), 24)