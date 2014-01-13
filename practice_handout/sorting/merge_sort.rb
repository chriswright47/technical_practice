# takes an array and returns a sorted array
def merge_sort(array)
  return array if array.length <= 1
  middle = array.length / 2
  first_half = merge_sort(array[0..middle-1])
  second_half = merge_sort(array[middle..-1])
  return merge(first_half,second_half)
end

def merge(a,b)
  merged_array = []
  until a.empty? || b.empty?
    a.first < b.first ? merged_array << a.shift : merged_array << b.shift
  end
  merged_array << a
  merged_array << b
  return merged_array.flatten
end



puts (merge_sort([1,2,3,4]) == [1,2,3,4])
puts (merge_sort([3,4,2,1]) == [1,2,3,4])
shuffled_array = (1..100).to_a.shuffle
start = Time.now
puts (merge_sort(shuffled_array) == (1..100).to_a)
puts "100 numbers takes #{Time.now - start}"
long_shuffled = (1..10000).to_a.shuffle
start = Time.now
puts (merge_sort(long_shuffled) == (1..10000).to_a)
puts "10000 numbers takes #{Time.now - start}"
