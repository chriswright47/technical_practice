def assert(received, expected)
  unless received == expected
    raise "Test failed: expected #{expected.inspect}, received #{received.inspect}"
  end
  puts 'test passed'
end

# a pivot index is a number in the array where all the sum of all numbers to the left
# is equal to the sum of all numbers to the right (neither sum includes the number at index)
# we want a method that returns the index of the pivot if it exists, -1 if not

PivotIndex = Struct.new(:left_sum,:right_sum,:i,:j) do

  def pivot_index(array)
    return 0 if array.length == 1
    # left_sum, right_sum, i, j = 0, 0, 0, -1
    start_sums(array)
    while count < array.length
      if left_sum < right_sum
        add_to_left(array)
      elsif left_sum > right_sum
        add_to_right(array)
      else
        add_to_both(array)
      end
    end
    left_sum == right_sum ? index_of_pivot : -1
  end

  private
  def start_sums(array)
    set_vars
    self.left_sum += array[i]
    self.right_sum += array[j]
    self.i += 1
    self.j -= 1
  end

  def count
    self.i - self.j
  end

  def add_to_left(array)
    self.left_sum += array[i]
    self.i += 1
  end

  def add_to_right(array)
    self.right_sum += array[j]
    self.j -= 1
  end

  def add_to_both(array)
    add_to_right(array)
    add_to_left(array)
  end

  def set_vars
    self.left_sum = 0
    self.right_sum = 0
    self.i = 0
    self.j = -1
  end

  def index_of_pivot
    i
  end
end

pivot = PivotIndex.new()
assert(pivot.pivot_index([1,2,3,7,6]), 3)
assert(pivot.pivot_index([1,2,3,7,6].reverse), 1)
assert(pivot.pivot_index([1,2,3,7,47]), -1)
assert(pivot.pivot_index([1,2,3,6]), -1)
assert(pivot.pivot_index([1,2]), -1)
assert(pivot.pivot_index([1,2,3,7,5,1]), 3)
assert(pivot.pivot_index([1]), 0)
