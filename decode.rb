
LETTERS = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.',
  'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',
  'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
  'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
  'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
  'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
  '0' => '-----', '1' => '.----',
  '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....',
  '7' => '--...', '8' => '---..', '9' => '----.'
}.freeze

def decode_char(mose_code)
  @phrase = []
  @index = 0
  mose_code_repl = mose_code.gsub('   ', '/')
  @word_array = mose_code_repl.split('/')

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

  puts @phrase.join

end

mose_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decode_char(mose_code)
