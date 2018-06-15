def anagram_diff(word1, word2)
  word1_hash_count = Hash.new(0)
  word2_hash_count = Hash.new(0)

  word1_arr = word1.chars
  word2_arr = word2.chars

  word1_arr.each {|letter| word1_hash_count[letter] += 1 }

  word2_arr.each { |letter| word2_hash_count[letter] += 1 }

  result = word2_hash_count.map do |letter, count|
    if word1_hash_count[letter] > word2_hash_count[letter]
      [letter, count]
    else
      [letter, word1_hash_count[letter]]
    end
  end

  num_letters_in_anagram = result.map { |arr| arr[1]}.inject(&:+)

  (word1.length - num_letters_in_anagram) + (word2.length - num_letters_in_anagram) 
end
