def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, got #{received.inspect}."
  end
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

fizzbuzz = FizzBuzz.build
assert(fizzbuzz.fizzify(1), 1)
assert(fizzbuzz.fizzify(3), 'Fizz')
assert(fizzbuzz.fizzify(5), 'Buzz')
assert(fizzbuzz.fizzify(15), 'FizzBuzz')


puts "Tests are passing!"