# Return the number (count) of vowels in the given string.

# We will consider a, e, i, o, and u as vowels for this Kata.

# The input string will only consist of lower case letters and/or spaces.

# input (args)
#   string
# Return
#   integer number of vowels in string


def get_count(input_str)
  input_str.count "\\^aeiou"
end