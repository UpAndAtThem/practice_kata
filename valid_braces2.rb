BRACES = {'(' => "\)", '{' => "\}", '[' => "\]"}

require 'pry'

def valid_braces(str)
  paren = 0
  curly = 0
  bracket = 0
  count = 0
  start_group = 0
  braces_arr = str.chars
  len = 0
  char_arr = str.chars
  loop do
    end_of_group = char_arr.join =~ /#{Regexp.quote(BRACES[char_arr[0]])}/ #bug is coming from str
    grouping = char_arr[0..end_of_group]
    char_arr.rotate!(end_of_group + 1)
  end
  


  # braces_arr.each do |char|
  #   paren += 1 if char == '('
  #   paren -= 1 if char == ')'

  #   curly += 1 if char == '{'
  #   curly -= 1 if char == '}'

  #   bracket += 1 if char == '['
  #   bracket -= 1 if char == ']'

  #   return false if [paren, curly, bracket].any? { |total| total < 0}
  # end

  # return true if [paren, curly, bracket].any? { |total| total == 0}

end


valid_braces("([{}]){}[]")   #=>  True
# p valid_braces "([{}])"   #=>  True
# p valid_braces "(}"       #=>  False
# p valid_braces "[(])"     #=>  False
# p valid_braces "[({})](]" #=>  False