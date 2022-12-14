message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '.----.' => "'",
  '-.-.--' => '!',
  '-..-.' => '/',
  '-.--.' => '(',
  '-.--.-' => ')',
  '.-...' => '&',
  '---...' => ':',
  '-.-.-.' => ';',
  '-...-' => '=',
  '.-.-.' => '+',
  '-....-' => '-',
  '..--.-' => '_',
  '.-..-.' => '"',
  '...-..-' => '$',
  '.--.-.' => '@'
}.freeze

def decode_letter(string)
  MORSE_CODE.each do |letter|
    if (letter = string)
      return MORSE_CODE[letter]
    end
  end
end

def decode_word(string)
  result = ''
  letters_array = string.split
  letters_array.each { |letter| result += decode_letter(letter) }
  result
end

def decode_message(string)
  result = ''
  words_array = string.split('   ')
  words_array.each { |word| result = "#{result} #{decode_word(word)}" }
  result
end

print decode_message(message)
