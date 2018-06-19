# encode a word. If a letter appears more than once encode with an "(" otherwise ")"

def duplicate_encode(word)
  word.downcase.chars.map{ |letter| word.downcase.count(letter) > 1 ? ")" : "("}.join
end