require 'pry'

OPERATIONS = %w(add subtract divide multiply).freeze

def calculator
  num1 = choose_number.to_i
  num2 = choose_number.to_i

  operation = choose_operation
  choice operation, num1, num2
end

def choice(operation, num1, num2)
  case operation
  when 'add'
    add(num1, num2)
  when 'subtract'
    subtract(num1, num2)
  when 'divide'
    divide(num1, num2)
  when 'multiply'
    multiply(num1, num2)
  end
end

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def divide(num1, num2)
  num1 / num2
end

def multiply(num1, num2)
  num1 * num2
end

def choose_number
  num = ''
  loop do
    prompt 'pick number'
    num = gets.chomp
    break if num =~ /[0-9]/
  end
  num.to_i
end

def prompt(str)
  puts "=> #{str}"
end

def choose_operation
  choice = ''
  prompt 'Choose: add, subtract, multiply, divide'
  loop do
    choice = gets.chomp
    break if OPERATIONS.include?(choice)
  end
  choice
end

calculator
