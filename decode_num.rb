LET_TO_NUM = {ONE: 1, TWO: 2, THREE: 3, FOUR: 4, FIVE: 5, SIX: 6, SEVEN: 7, EIGHT: 8, NINE: 9, ZERO: 0}
NUM_WORDS = %w(ZERO ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN)

def decode_number(string)
  loop do
    NUM_WORDS.each do |num|
      count = 0
      has_word = false
      num.chars.each do |let|
        count += 1 if string.include?(let)
        p has_word = true if count == num.length
      end
      if has_word
        p string.gsub!(/([#{num}])/, '')
        p string
        gets
      end
    end
    break if string.length == 0
  end
end

p decode_number "ONETWOTHREE"
