# create a hash key is letter and value is letter_value a = 1, b = 2
# split words delimited by the space character called split_words
# iterate over words
# split individual word at every letter
# add up the sum of all the letters value in word and push it to a new arr called word_vals
# return word in split_words at index of the highest int of word_vals

LETTER_VALUES = ('a'..'z').zip((1..26)).to_h

def high(words)
  split_words = words.split
  word_vals = []

  split_words.each { |word| word_vals << value(word) }

  highest_val = word_vals.max
  split_words.find { |word| value(word) == highest_val}
end

def value(word)
  word.chars.map { |letter| LETTER_VALUES[letter] }.reduce(&:+)
end

def high_more_clever(words)
  words.split.max_by { |word| value(word)}
end

high('man i need a taxi up to ubud') #=> "taxi"