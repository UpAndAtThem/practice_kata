def no_ending_num?(string)
  true unless string[-1] =~ /[0-9]/
end

def split_end_numbers(string)
  string.split(/([0-9]+)/)
end

def split_leading_zeros(string)
  string.split(/([1-9]+)/)
end

def str_increment(string)
  if no_ending_num? string
    return string + '1'
  end
  alpha_num_partition_arr = split_end_numbers(string)
  alpha_num_partition_arr[1] = split_leading_zeros(alpha_num_partition_arr[1]) if alpha_num_partition_arr[1][0] == '0'
  alpha_num_partition_arr
end

p str_increment("foobar0011") #== 'foobar1'
# p str_increment "foobar001" == 'foobar002'
# p str_increment '' == '1'
# p str_increment 'foobar000' == 'foobar001'