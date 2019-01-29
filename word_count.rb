class Phrase
  def initialize(str)
    @words = str.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, word_hsh|
      word_hsh[word] += 1
    end
  end

  private
  
  attr_reader :words
end