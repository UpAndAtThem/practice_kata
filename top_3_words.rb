# A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. 
# (No need to handle fancy punctuation.)
# Matches should be case-insensitive, and the words in the result should be lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, 
# or an empty array if a text contains no words.

# Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

# Assumptions:
# A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
# Matches should be case-insensitive, and the words in the result should be lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

def top_3_words(string)
  word_count_hash = Hash.new(0)

  string.split(" ").each do |word|
    result_word = word.gsub(/[^A-Za-z']/, "").downcase
    word_count_hash[result_word] += 1
  end

  return_arr = word_count_hash.sort_by{ |key, value| value }.to_h.keys.reverse[0..2] # sorts hash by number of occurances small to large. takes the words arr reverses it and returns the first 3
  return_arr.reject!{ |char| char == "'" }
  return_arr.reject(&:empty?)
end
