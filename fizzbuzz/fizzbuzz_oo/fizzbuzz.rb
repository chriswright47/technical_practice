def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, got #{received.inspect}."
  end
end

class FizzBuzz
  def fizzify(integer)
    if integer % 3 == 0
      integer % 5 == 0 ? 'FizzBuzz' : 'Fizz'
    else
      integer % 5 == 0 ? 'Buzz' : integer
    end
  end

end

fizzbuzz = FizzBuzz.new
assert(fizzbuzz.fizzify(1), 1)
assert(fizzbuzz.fizzify(3), 'Fizz')
assert(fizzbuzz.fizzify(5), 'Buzz')
assert(fizzbuzz.fizzify(15), 'FizzBuzz')


puts "Tests are passing!"