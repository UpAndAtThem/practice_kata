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

  if alpha_num_partition_arr[1][0] == '0' 

    if alpha_num_partition_arr[1].chars.all? {|char| char == '0'}
      return alpha_num_partition_arr[0] + alpha_num_partition_arr[1][1..-1] + '1'
    end

    alpha_num_partition_arr[1] = split_leading_zeros(alpha_num_partition_arr[1])
    
    if alpha_num_partition_arr[1][1].chars.all? {|num| num == '9'}
      alpha_num_partition_arr[1][0] = alpha_num_partition_arr[1][0][1..-1]
    end

    alpha_num_partition_arr[1][1] = (alpha_num_partition_arr[1][1].to_i + 1).to_s

    alpha_num_partition_arr.flatten.join
  else

    alpha_num_partition_arr[1] = (alpha_num_partition_arr[1].to_i + 1).to_s
    alpha_num_partition_arr.join
  end
end

p str_increment("foobar099999") #== 'foobar2000'
