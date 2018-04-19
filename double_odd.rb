def double_odd_numbers(numbers)
  counter = 0
  return_arr = []

  loop do
    current_number = numbers[counter]

    current_number.odd? ? return_arr << current_number * 2 : return_arr << current_number

    counter += 1
    break if counter == numbers.size
  end

  return_arr
end

def double_odd_indexes(numbers)
  counter = 0
  return_arr = []

  loop do
    if counter.odd?
      return_arr << numbers[counter] * 2
    else
      return_arr << numbers[counter]
    end

    counter += 1
    break if counter == numbers.size
  end

  return_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]

double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]
double_odd_indexes(my_numbers)  # => [1, 8, 3, 14, 2, 12]
