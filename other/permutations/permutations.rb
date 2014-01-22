def permutations(string)
  return string if string.length <= 1


end


puts permutations('a') == 'a'
puts permutations('ab') == ['ab','ba']
puts permutations('abc') == ['abc','acb','bac','bca','cab','cba']