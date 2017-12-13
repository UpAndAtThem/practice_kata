class Dictionary

  def initialize(words)
    @words=words
  end

  def closest_word(misspelled_word)
    num_letters_similar_hash = Hash.new(0)
    @words.each do |word|
      misspelled_word.split("").each do |x|
        num_letters_similar_hash[word] += 1 if word.include? x
      end
      num_letters_similar_hash[word] = 0 if word.length > misspelled_word.length + 2
      num_letters_similar_hash[word] = 0 if word.length < misspelled_word.length - 2
    end
    num_letters_similar_hash.max_by{|k,v| v}[0]
  end
end

dictionary_instance = Dictionary.new(%w(aardvark anteater bungee bystander cat consternation direct dunce evergreen evaporate flim flam))

dictionary_instance.closest_word('bistandr') # returns bystander