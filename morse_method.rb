def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse[char]
end

def decode_word(word)
  resulted_word = ''
  array = word.split
  array.each do |char|
    resulted_word += decode_char(char)
  end
  resulted_word
end

def decode_string(string)
  resulted_string = ''
  array = string.split('  ')
  array.each do |word|
    resulted_string += decode_word(word)
    resulted_string += ' '
  end
  resulted_string
end

puts decode_string('-- -.--   -. .- -- .')
puts decode_string('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
