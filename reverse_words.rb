# rubocop:disable LineLength
# ----pseudo code----

# Given an empty string, word, or string of words called str

# initalize an empty array called reversed_arr
# split str delimited at the space character, into a collection of strings called strings
# iterate over strings with each iteration value named string
#   - reverse the string and push it onto reversed_arr
# initalize an empty string called result_reversed
# iterate over each reversed_arr, with each iteration value named reversed_str
#   if its not the last element in the collection
#     concatenate reversed_str and a space char, and add it to result_reversed
#   otherwise
#     add reversed_str to result_reversed
# return result_reversed

# ----formal pseudo code----

# START

# Given an empty string, word, or string of words called str

# SET reversed_arr = []
# SET strings = array of elements created from splitting str into new substrings delimited by the space char
# SET iteration = 1, result_reversed = ''

# WHILE iteration <= number of elements in strings
#   IF not the last element in collection
#     result_reversed += reverse the variable of strings collection in spot iteration with a space
#   ELSE
#     result_reversed += reverse the variable of strings collection in spot iteration

# PRINT result_reversed

# END
# rubocop:enable LineLength

def reverse_words(str)
  str.split.map(&:reverse).join' '
end
