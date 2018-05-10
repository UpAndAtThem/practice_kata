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
  result_hsh = {}
  start_range.upto(end_range) do |current_num|
    result_hsh[current_num] = get_divisors current_num
  end
  result_hsh.max_by { |_, v| v.length }[0]
end

def get_divisors(number)
  result_arr = []
  1.upto(number) { |divisor| result_arr << divisor if number % divisor.zero? }
  result_arr
end

p div_num(15, 30) # => 24
