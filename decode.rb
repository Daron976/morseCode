# puts "Hello, World!"

LETTERS = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.',
  'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',
  'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
  'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
  'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
  'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
  'zero' => '-----', 'one' => '.----',
  'two' => '..---', 'three' => '...--',
  'four' => '....-', 'five' => '.....', 'six' => '-....',
  'seven' => '--...', 'eight' => '---..', 'nine' => '----.'
}.freeze

name = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

@phrase = []
@index = 0
name_repl = name.gsub('   ', '/')
@word_array = name_repl.split('/')

def test
  @word = @word_array[@index].split
  final = ''
  @word_array.each_with_index do |_c, idx|
    LETTERS.each do |key, val|
      final += key if val == @word[idx]
    end
  end
  @phrase.push(final).push(' ')
  @index += 1
end

n = 0

while n < @word_array.length
  test
  n += 1
end

puts @phrase
