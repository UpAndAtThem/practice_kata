def multiply(numbers, multiplier)
  count = 0
  result_arr = []

  loop do
    result_arr << numbers[count] * multiplier

    count += 1
    break if count == numbers.size
  end

  result_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]