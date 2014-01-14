class Fibonacci
  def nth_fibonacci_recursively(n)
    return 1 if n <= 2
    return nth_fibonacci_recursively(n-1) + nth_fibonacci_recursively(n-2)
  end

  def nth_fibonacci_loop(n)
    count = 1
    i,j = 0, 1
    while count < n
      i,j = j,i+j
      count += 1
    end
    j
  end

end

fibonacci = Fibonacci.new()
puts fibonacci.nth_fibonacci_recursively(1) == 1
puts fibonacci.nth_fibonacci_recursively(2) == 1
puts fibonacci.nth_fibonacci_recursively(3) == 2
puts fibonacci.nth_fibonacci_recursively(7) == 13

puts fibonacci.nth_fibonacci_loop(1) == 1
puts fibonacci.nth_fibonacci_loop(2) == 1
puts fibonacci.nth_fibonacci_loop(3) == 2
puts fibonacci.nth_fibonacci_loop(7) == 13
