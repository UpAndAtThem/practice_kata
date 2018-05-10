require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('calc_prompts.yml')

def calculate(num1, num2, operation)
  case operation
  when '1' then num1.to_i + num2.to_i
  when '2' then num1.to_i - num2.to_i
  when '3' then num1.to_i * num2.to_i
  when '4' then num1.to_f / num2.to_i
  end
end

def input
  num1 = ''
  num2 = ''
  operation = ''

  loop do
    puts MESSAGES[:get_first]
    num1 = gets.chomp
    break if num1.to_i.to_s == num1
  end

  loop do
    puts MESSAGES[:get_second]
    num2 = gets.chomp
    break  if num2.to_i.to_s == num2
  end

  loop do
    puts MESSAGES[:get_operation]
    operation = gets.chomp
    break if %w(1 2 3 4).include? operation
  end

  [num1, num2, operation]
end

def calculator
  num1, num2, operation = input
  calculate(num1, num2, operation)
end

p calculator
