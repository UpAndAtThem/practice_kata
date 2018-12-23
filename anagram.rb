# Anagram class
class Anagram
  attr_reader :word, :word_sorted

  def initialize(word)
    @word = word
    @word_sorted = word.downcase.chars.sort.join
  end

  def anagram?(other_word)
    other_word_sorted = other_word.downcase.chars.sort.join

    other_word_sorted == word_sorted &&
      !other_word.casecmp(word).zero?
  end

  def match(word_sort_list)
    word_sort_list.select do |list_word|
      anagram? list_word
    end
  end
end
