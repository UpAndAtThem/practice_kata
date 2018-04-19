require 'pry'

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  selected_chars << alphabet[counter] if alphabet[counter] == 'a'
  
  counter += 1
  break if counter == alphabet.length
end

puts selected_chars