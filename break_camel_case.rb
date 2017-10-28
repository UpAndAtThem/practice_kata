# Break camelCase

# Complete the solution so that the function will break up camel casing, using a space between words.

# Example

# solution('camelCasing') # => should return 'camel Casing'

def solution(string)
  words = []
  word_indexes = word_range_index string
  word_indexes.each { |arr| words << string[arr[0]..arr[1]]}
  words.join" "
end

def word_range_index(string)
  this_start = 0
  word_indexes = []
  string.chars.each_with_index do |char, index|
    word_indexes << [this_start, index-1] if char =~ /[A-Z]/ 
    word_indexes << [this_start, index] if index == (string.length - 1) 
    this_start = index if char =~ /[A-Z]/
  end
  word_indexes
end


p solution("trevorTrentTaylorTeeBoyBe")