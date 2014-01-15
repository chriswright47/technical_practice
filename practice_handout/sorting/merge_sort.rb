# takes an array and returns a sorted array
def merge_sort(array)
  return array if array.length <= 1
  middle = array.length / 2
  first_half = merge_sort(array[0..middle-1])
  second_half = merge_sort(array[middle..-1])
  merge(first_half,second_half)
end

def merge(a,b)
  merged_array = []
  until a.empty? || b.empty?
    a.first < b.first ? merged_array << a.shift : merged_array << b.shift
  end
  (b.empty? ? a : b).each { |x| merged_array << x }
  merged_array
  # merged_array.push(b.empty? ? a : b).flatten
end

def other_sort(array)
  array.sort {|a,b| a <=> b}
end



# Driver code
puts (merge_sort([1,2,3,4]) == [1,2,3,4])
puts (merge_sort([3,4,2,1]) == [1,2,3,4])
puts (merge_sort([3,4,2,2,2,1]) == [1,2,2,2,3,4])
shuffled_array = (1..100).to_a.shuffle
puts merge_sort(shuffled_array) == (1..100).to_a
long_shuffled = (1..100000).to_a.shuffle
puts merge_sort(long_shuffled) == (1..100000).to_a








# start = Time.now
# puts (merge_sort(shuffled_array) == (1..100).to_a)
# puts "100 numbers takes #{Time.now - start} with merge sort"
# long_shuffled = (1..100000).to_a.shuffle
# start = Time.now
# puts (merge_sort(long_shuffled) == (1..100000).to_a)
# puts "100000 numbers takes #{Time.now - start} with merge sort"

# start = Time.now
# puts (other_sort(shuffled_array) == (1..100).to_a)
# puts "100 numbers takes #{Time.now - start} with bubble sort"
# long_shuffled = (1..100000).to_a.shuffle
# start = Time.now
# puts (other_sort(long_shuffled) == (1..100000).to_a)
# puts "100000 numbers takes #{Time.now - start} with bubble sort"

