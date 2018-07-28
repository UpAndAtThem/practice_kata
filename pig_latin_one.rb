# 1) The word starts with a vowel(a,e,i,o,u) -> return the original string plus "way".

# 2) The word starts with a consonant -> move consonants from the beginning of the word to the end of the word until the first vowel, then return it plus "ay".

# 3) The result must be lowercase, regardless of the case of the input. If the input string has any non-alpha characters, the function must return None, null, Nothing (depending on the language).

# 4) The function must also handle simple random strings and not just English words.

# 5) The input string has no vowels -> return the original string plus "ay".

def pig_latin(word)
  has_vowels = word.chars.any? { |letter| %w(a e i o u).include? letter}
  first_letter_vowel = %w(a e i o u).include? word[0].downcase


  return (word + 'ay').downcase                  unless has_vowels
  return (word << "way").downcase                if first_letter_vowel
  return (word[1..-1] + word[0] + "ay").downcase unless first_letter_vowel
end

pig_latin "Celebrate" # => elebratecay