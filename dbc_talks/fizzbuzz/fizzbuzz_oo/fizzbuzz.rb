def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, got #{received.inspect}."
  end
  puts 'test passed'
end

FizzBuzz = Struct.new(:prime1, :prime2) do

  def self.build(prime1=3, prime2=5)
    self.new(prime1, prime2)
  end

  def fizzify(int)
    if int % prime1 == 0
      int % prime2 == 0 ? 'FizzBuzz' : 'Fizz'
    else
      int % prime2 == 0 ? 'Buzz' : int
    end
  end
end

fizzbuzz = FizzBuzz.build()
assert(fizzbuzz.fizzify(1), 1)
assert(fizzbuzz.fizzify(3), 'Fizz')
assert(fizzbuzz.fizzify(5), 'Buzz')
assert(fizzbuzz.fizzify(15), 'FizzBuzz')

fizzbuzz57 = FizzBuzz.build(5, 7)
assert(fizzbuzz57.fizzify(1), 1)
assert(fizzbuzz57.fizzify(15), 'Fizz')
assert(fizzbuzz57.fizzify(21), 'Buzz')
assert(fizzbuzz57.fizzify(35), 'FizzBuzz')
assert(fizzbuzz57.fizzify(36), 36)


puts "Tests are passing!"