# given a string of space separated spelled out numbers on either side of an operator

# create constant arr of hashes [{one: 1},{...} called NUMBERS_HSH
# split string into words of numbers and operator
# set num1 to the value of NUMBERS_HSH[split_string[0]]
# set num2 to the value of NUMBERS_HSH[split_string[2]]
# set operator to NUMBERS_HSH[split_string[1]]

# ex ONE PLUS TWO

NUMBERS_HSH = %w(zero one two three four five six seven eight nine ten).zip((0..10)).to_h

def computer(expression)
  expression_arr = expression.split

  num1 = NUMBERS_HSH[expression_arr[0]]
  num2 = NUMBERS_HSH[expression_arr[2]]
  operator = expression_arr[1]

  case operator
  when 'plus'   then num1 + num2
  when 'minus'  then num1 - num2
  when 'times'  then num1 * num2
  when 'divide' then num1 / num2
  end
end
