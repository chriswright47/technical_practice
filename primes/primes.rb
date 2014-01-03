def n_primes(n)
  # returns an array of the first n primes
end

def primes_up_to(n)
  # returns an array of primes up to (and including) n
  return [] if n < 2
  @primes = [2]
  return @primes if n == 2
  next_prime = 3
  while @primes.last < n
    @primes << next_prime
    next_prime = find_next_prime(next_prime + 2)
  end
  @primes
end

def find_next_prime(x)
  return x if is_prime?(x)
  find_next_prime(x + 2)
end

def is_prime?(x)
  @primes.each do |prime|
    return false if x % prime == 0
  end
  return true
end


puts primes_up_to(0) == []
puts primes_up_to(1) == []
puts primes_up_to(2) == [2]
puts primes_up_to(7) == [2,3,5,7]
puts primes_up_to(47) == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]