def multiply(numbers, multiplier)
  count = 0
  result_arr = []

  loop do
    break if count == numbers.size
    result_arr << numbers[count] * multiplier

    count += 1
  end

  result_arr
end

my_numbers = []

p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]