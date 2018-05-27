require 'pry'
def spin_words(str)
  str.split.map { |word| word.size >= 5 ? word.gsub(word, word.reverse) : word}.join" "
end

p spin_words( "Hey low warriors" )