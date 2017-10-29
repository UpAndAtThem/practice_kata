def anagrams(anagram, str_arr)
  result = []
  str_arr.each do |pos_anagram|
    anagram_hash = Hash.new(0)
    pos_anagram_hash = Hash.new(0)

    pos_anagram.chars.each do |char|
      pos_anagram_hash[char] += 1
    end
    anagram.chars.each do |char|
      anagram_hash[char] += 1
    end
    
    result << pos_anagram if anagram_hash == pos_anagram_hash
  end
  result
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) # => ['aabb', 'bbaa']