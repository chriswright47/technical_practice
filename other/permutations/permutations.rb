def get_permutations(string)
  return [''] if string.length == 0

  first = string[0]
  remainder = string.slice(1..-1)
  words = get_permutations(remainder)
  permutations = []
  words.each do |word|
    (word.length + 1).times do |i|
      permutations.push(insert_char_at(first, word, i))
    end
  end
  permutations
end

def insert_char_at(char, word, index)
  word.dup.insert(index, char)
end


p get_permutations('a') == ['a']
p get_permutations('ab') == ['ab','ba']
p get_permutations('abc').sort == ['abc','bac','bca','acb','cab','cba'].sort