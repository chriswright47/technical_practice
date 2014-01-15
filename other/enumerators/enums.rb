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
    # this puts the next n nums,
    # does not return them
    n.times {puts fibonacci_number.next}
  end

  def first_n_nums(n)
    # returns the first n nums in an array
    fibonacci_number.first(5)
  end

end

fibonacci_sequence = Fibonacci.new

# this will print the first ten numbers
fibonacci_sequence.next_n_nums(10)

# and this will print the next ten
fibonacci_sequence.next_n_nums(10)

# this will p an array of the first 5
p fibonacci_sequence.first_n_nums(5)

