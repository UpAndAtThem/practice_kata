def add_numbers(arr)
  arr.reduce(&:+)
end

def odd_length?(int)
  int.to_s.length.odd?
end

def length(int)
  int.to_s.length
end

def sum(num_arr)
  num_arr.reduce(&:+)
end

def is_balanced?(int_arr, partition_size)
  sum_first_half = sum int_arr[0...partition_size]
  sum_last_half = sum int_arr[-partition_size..-1]

  sum_first_half == sum_last_half
end

def balanced_num?(number)
  return true if [1,2].include? length(number)

  int_arr = number.to_s.chars.map(&:to_i)
  length = length number

  if odd_length? number
    partition_size = (length / 2)
    return is_balanced?(int_arr, partition_size)   
  else
    partition_size = (length / 2) - 1
    return is_balanced?(int_arr, partition_size)
  end
end
