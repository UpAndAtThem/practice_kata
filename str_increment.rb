# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number the number 1 should be appended to the new string.

# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def no_ending_num?(string)
  true unless string[-1] =~ /[0-9]/
end

def split_end_numbers(string)
  string.split(/([0-9]+)/)
end

def split_leading_zeros(string)
  string.split(/([1-9]+)/)
end

def leading_zero_increment(alpha_num_partition_arr)
  if alpha_num_partition_arr[1].chars.all? { |char| char == '0' }
    return alpha_num_partition_arr[0] + alpha_num_partition_arr[1][1..-1] + '1'
  end

  alpha_num_partition_arr[1] = split_leading_zeros(alpha_num_partition_arr[1])

  if alpha_num_partition_arr[1][1].chars.all? { |num| num == '9' }
    alpha_num_partition_arr[1][0] = alpha_num_partition_arr[1][0][1..-1]
  end

  alpha_num_partition_arr[1][1] = (alpha_num_partition_arr[1][1].to_i + 1).to_s

  alpha_num_partition_arr.flatten.join
end

def no_leading_zero_increment(alpha_num_partition_arr)
  alpha_num_partition_arr[1] = (alpha_num_partition_arr[1].to_i + 1).to_s
  alpha_num_partition_arr.join
end

def string_increment(string)
  return string + '1' if no_ending_num? string

  alpha_num_partition_arr = split_end_numbers(string)

  if alpha_num_partition_arr[1][0] == '0'
    leading_zero_increment alpha_num_partition_arr
  else
    no_leading_zero_increment alpha_num_partition_arr
  end
end

p string_increment('foobar0099999') # returns 'foobar100000'
