class Acronym
  def self.abbreviate(phrase)
    formatted = phrase.gsub(/[^a-zA-Z0-9 ]/, " ")
    formatted.split.map { |word| word[0].capitalize }.join
  end
end