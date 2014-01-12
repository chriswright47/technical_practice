def encode_char(char, shift)
  if /[A-Za-z]/ =~ char
    if /[A-Z]/ =~ char
      offset = (char.ord - "A".ord + shift) % 26
      ("A".ord + offset).chr
    else
      offset = (char.ord - "a".ord + shift) % 26
      ("a".ord + offset).chr
    end
  else
    char
  end
end

def encode_string(string, shift)
  string.split('').map{|char| encode_char(char, shift)}.join('')
end

def decode_string(string, shift)
  encode_string(string, -shift)
end


puts encode_char("A", 3) == "D"
puts encode_char("b", 4) == "f"
puts encode_char("Z", 3) == "C"
puts encode_char("z", 2) == "b"
puts encode_char(" ", 2) == " "
puts encode_char(",", 2) == ","

puts encode_string('Abcdef', 3) == 'Defghi'
puts decode_string(encode_string('Abcdef', 3), 3) == 'Abcdef'

