require 'pry'

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
  expression.sub!(/(-?\w+) (\w+) (-?\w+)/) do |match|
    num1 = $1.to_i
    num2 = $3.to_i
    operator = $2

    case operator
    when 'plus'   then num1 + num2
    when 'minus'  then num1 - num2
    end
  end
end

def convert_expression(expression)
  converted = expression.split.map do |word|
    NUMBERS_HSH.keys.include?(word) ? NUMBERS_HSH[word].to_s : word
  end
end

p computer "three minus three minus three minus three plus ten plus ten" #=> "14"