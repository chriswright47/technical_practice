fibonacci_number = Enumerator.new do |yielder|
  i, j = 0, 1
  loop do
    yielder.yield j
    i, j = j, i + j
  end
end

# this puts the first ten fibonacci numbers
10.times {puts fibonacci_number.next}

# this puts the 11th - 15th fibonacci numbers,
# b/c the enumerator has already been called ten times
5.times {puts fibonacci_number.next}