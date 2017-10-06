# Write a function named firstNonRepeatingLetter† that takes a string input, 
# and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', 
# since the letter t only occurs once in the string, and occurs first in the string.

def first_non_repeating_letter(string)
  result = ''
  letter_count = Hash.new(0)
  string.chars.each do |letter|
    letter_count[letter.to_sym] += 1
  end
  letter_count.select do |letter, count|
    result = letter if count == 1
    break if result.size == 1
  end
  result.to_s
end

first_non_repeating_letter "helloozzheqr" # == 'q'