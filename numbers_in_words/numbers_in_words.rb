NUMBER_WORDS = { 0 => '',
  1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
  7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
  12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
  16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
  20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty',
  70 => 'seventy', 80 => 'eighty', 90 => 'ninety'
}

POWERS_OF_TEN = {
  12 => 'trillion', 9 => 'billion', 6 => 'million',
  3 => 'thousand', 2 => 'hundred'
}

def number_in_words(n)
  return NUMBER_WORDS[n] if NUMBER_WORDS.has_key?(n)
  if n < 100
    number_in_words(n - n%10) + ' ' + number_in_words(n%10)
  else
    words = ''
    POWERS_OF_TEN.each do |number, word|
      if n >= 10**number
        words << number_in_words(n / 10**number) + ' ' + word
        n = n % (10**number)
      end
    end
    (words + ' ' + number_in_words(n)).rstrip
  end
end

puts number_in_words(7) == 'seven'
puts number_in_words(47) == 'forty seven'
puts number_in_words(50) == 'fifty'
puts number_in_words(10000) == 'ten thousand'
puts number_in_words(10001) == 'ten thousand one'
puts number_in_words(47000000) == 'forty seven million'