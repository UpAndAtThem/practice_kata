class Phrase
  attr_reader :words

  def initialize(str)
    @words = str.downcase.scan(/(\w+'\w+|\w+)/).flatten
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, word_hsh|
      word_hsh[word] += 1
    end
  end
end