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
  [two_count, five_count].min
end

def count_twos(x)
  count = 0
  while x % 2 == 0
    count += 1
    x /= 2
  end
  count
end

def count_fives(x)
  count = 0
  while x % 5 == 0
    count += 1
    x /= 5
  end
  count
end


assert(factorial_zeros(1), 0)
assert(factorial_zeros(10), 2)
assert(factorial_zeros(100), 24)