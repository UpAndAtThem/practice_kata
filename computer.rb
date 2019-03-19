NUMBERS_HSH = %w(zero one two three four five six seven eight nine ten).zip((0..10)).to_h

def computer(expression)
  expression = convert_expression(expression).join" " 

  loop do
    evaluate_first_operation(expression)
    break unless expression.include?(" ")
  end

  expression
end

def evaluate_first_operation(expression)
  regex = get_regex(expression)

  expression.sub!(regex) do |match|
    num1 = $1.to_i
    num2 = $3.to_i
    operator = $2

    case operator
    when 'plus'       then num1 + num2
    when 'minus'      then num1 - num2
    when 'divided by' then num1 / num2
    when 'times'      then num1 * num2
    end
  end
end

def convert_expression(expression)
  converted = expression.split.map do |word|
    NUMBERS_HSH.keys.include?(word) ? NUMBERS_HSH[word].to_s : word
  end
end

def get_regex(expression)
  if expression.include?("divided") || expression.include?("times")
    /(-?\w+) (divided by|times) (-?\w+)/
  else
    /(-?\w+) (\w+) (-?\w+)/
  end
end

p computer "six plus ten divided by two" #=> "11"