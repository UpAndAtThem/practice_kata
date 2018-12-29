# Isogram class
class Isogram
  def self.isogram?(test_string)
    word_chars_only = test_string.gsub(/\W/, '').downcase.chars
    word_chars_only.uniq == word_chars_only
  end
end
