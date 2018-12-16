class Pangram
  def self.pangram?(str)
    letters = ('a'..'z').to_a
    formatted = str.gsub(/[^a-zA-Z]/, "").downcase
    
    formatted.chars.each { |char| letters.delete(char) }

    letters.empty? ? true : false
  end
end