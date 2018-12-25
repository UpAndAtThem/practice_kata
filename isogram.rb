# Isogram class
class Isogram
  def self.isogram?(test_string)
    test_string.downcase.chars.each_with_object(Hash.new(0)) do |char, count_hsh|
      count_hsh[char] += 1 if char =~ /[a-z]/
      return false if count_hsh[char] > 1
    end

    true
  end
end
