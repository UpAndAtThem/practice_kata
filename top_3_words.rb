# A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. 
# (No need to handle fancy punctuation.)
# Matches should be case-insensitive, and the words in the result should be lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, 
# or an empty array if a text contains no words.

# Examples: 
# top_3_words("In a village of La Mancha, the name of which I have no desire to call to
#   mind, there lived not long since one of those gentlemen that keep a lance
#   in the lance-rack, an old buckler, a lean hack, and a greyhound for
#   coursing. An olla of rather more beef than mutton, a salad on most
#   nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
#   on Sundays, made away with three-quarters of his income.")

#  returns => ["a", "of", "on"]  

def top_3_words(str)
  return [] if str.length.zero?
  alpha_word_arr = str.split(" ").map{ |word| word.downcase.gsub(/[^a-z']/i, '')}

  word_hash = Hash.new(0)
  alpha_word_arr.each do |word|
    word_hash[word] += 1 if word =~ /[a-z]/
  end

  sorted_arr = word_hash.sort {|a, b| b[1] <=> a[1]}

  return sorted_arr[0, sorted_arr.length].map { |arr| arr[0] } if sorted_arr.length < 3
  sorted_arr[0,3].map { |arr| arr[0] }
end
