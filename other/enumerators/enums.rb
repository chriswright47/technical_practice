class Fibonacci
  private
  attr_reader :fibonacci_number

  def initialize
    @fibonacci_number = Enumerator.new do |yielder|
      i, j = 0, 1
      loop do
        yielder.yield j
        i, j = j, i + j
      end
    end
  end

  public
  def next_n_nums(n)
    # returns next n number in array
    result = []
    n.times {result << fibonacci_number.next}
    result
  end

  def first_n_nums(n)
    # returns the first n nums in an array
    fibonacci_number.first(5)
  end
end

fibonacci_sequence = Fibonacci.new

# this will print an array of the first ten numbers
p fibonacci_sequence.next_n_nums(10)

# and this will print an array of the next ten
p fibonacci_sequence.next_n_nums(10)

# this will print an array of the first five
p fibonacci_sequence.first_n_nums(5)

