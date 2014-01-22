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

p fibonacci_sequence.next_n_nums(10) #=> [1,1,2,3,5,8,13,21,34,55]
p fibonacci_sequence.next_n_nums(10) #=> [89,144,233,377,610,987,1597,2584,4181,6765]
p fibonacci_sequence.first_n_nums(5) #=> [1,1,2,3,5]

