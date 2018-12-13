# Atbash Class
class Atbash
  NUM_STRING_ARR = (0..9).to_a.map(&:to_s)
  KEYS = ('a'..'m').to_a + ('n'..'z').to_a.reverse + NUM_STRING_ARR
  VALUES = ('n'..'z').to_a.reverse + ('a'..'m').to_a + NUM_STRING_ARR

  DECODER = KEYS.zip(VALUES).to_h

  def self.remove_illegal_chars(plaintext_message)
    plaintext_message.downcase.gsub(/[^a-z0-9]/, '')
  end

  def self.swap_chars(str)
    str.chars.map { |char| DECODER[char] }.join
  end

  def self.encode(plaintext_message)
    formatted_str = remove_illegal_chars plaintext_message
    swapped_str = swap_chars formatted_str

    atbash_result_arr = []

    swapped_str.chars.each_slice(5) do |group|
      atbash_result_arr << group.join
    end

    atbash_result_arr.join(' ')
  end
end
