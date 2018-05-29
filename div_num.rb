# given 2 ints find the integer from a to b with the greatest divisors

# iterate a.upto(b)
  # get_divisors(current_num)
  # set result_hsh where the key is the current iterated number, and the number of divisors as value
# return the key of the most divisors

# get_divisors method given an integer called int

# set result_arr to empty
# iterate 1.upto(int)
#   push current number in range onto result_arr if current % int == 0
# return result_arr.length

def div_num(start_range, end_range)
  start_range.upto(end_range)
             .with_object({}) { |current_num, result_hsh| result_hsh[current_num] = get_divisors current_num }
             .max_by { |_, v| v.length }.first
end

def get_divisors(number)
  1.upto(number).with_object([]) { |divisor, result_arr| result_arr << divisor if (number % divisor).zero? }
end

p div_num(15, 30) # => 24
