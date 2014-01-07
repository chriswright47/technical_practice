def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, got #{received.inspect}."
  end
end

class FizzBuzz
  def fizzify(integer)
    integer % 3 == 0 ? 'Fizz' : integer
  end

  def buzzify(integer)
    integer % 5 == 0 ? 'Buzz' : integer
  end
end

fizzbuzz = FizzBuzz.new
assert(fizzbuzz.fizzify(1), 1)
assert(fizzbuzz.fizzify(3), 'Fizz')


puts "Tests are passing!"