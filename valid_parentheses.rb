# Write a function called validParentheses that takes a string of parentheses, 
# and determines if the order of the parentheses is valid. validParentheses should return true 
# if the string is valid, and false if it's invalid.


def valid_parentheses(string)
  par_arr = string.chars.select do |char|
    char =~ /[()]/
  end
  left_count = 0
  right_count = 0
  par_arr.each do |parentheses|
    left_count += 1 if parentheses == '('
    right_count += 1 if parentheses == ')'
  end
  return true if par_arr.empty?
  par_arr[0] == '(' && par_arr[-1] == ')' && left_count == right_count
end
