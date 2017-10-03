#Create a hash that expresses the frequency with which each letter occurs in this string:

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def num_letters(str)
  result_hsh = Hash.new(0)
  str.chars.each {|letter| result_hsh[letter] += 1}
  result_hsh.select! {|key, value| ALPHABET.include? key }
end

p num_letters "Flintstones Rock"