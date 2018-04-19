# If we wanted to, we could've easily decided that mutating the method argument is the right approach. 
# Can you implement a double_numbers! method that mutates its argument?

def double_numbers!(int_arr)
  counter = 0

  loop do
    int_arr[counter] *= 2

    counter += 1
    break if counter == int_arr.size
  end
end

def double_numbers(int_arr)
  counter = 0
  return_arr = []

  loop do
    return_arr << int_arr[counter] * 2
    counter += 1
    break if counter == int_arr.size
  end
  return_arr
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

double_numbers(double_numbers(double_numbers(numbers)))
numbers

