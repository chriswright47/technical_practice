class Integer
  def fizzbuzz
    output = ''
    output << self.fizz
    output << self.buzz
  end

  def fizz
    self % 5 == 0 ? 'fizz' : ''
  end

  def buzz
    self % 7 == 0 ? 'buzz' : ''
  end
end

puts 3.fizzbuzz == ''
puts 5.fizzbuzz == 'fizz'
puts 7.fizzbuzz == 'buzz'
puts 35.fizzbuzz == 'fizzbuzz'
puts 0.fizzbuzz == 'fizzbuzz'
puts 21.fizzbuzz == 'buzz'
puts 49.fizzbuzz == 'buzz'
puts 77.fizzbuzz == 'buzz'
puts 105.fizzbuzz == 'fizzbuzz'
puts 25.fizzbuzz == 'fizz'
puts 100.fizzbuzz == 'fizz'
puts 50.fizzbuzz == 'fizz'
