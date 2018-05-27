# START
# SET odds_arr = [], evens_arr = [], count = 0
# WHILE count < int_arr.size
#   int_arr[count] % 2 != 0 ? odds_arr << int_arr[count] : evens_arr << int_arr[count]
#   return evens_arr.first if odds_arr.size > 1 && !evens_arr.empty?
#   return odds_arr.first if evens_arr.size > 1 && !odds_arr.empty?
#   count += 1
# END

def outlier(int_arr)
  evens_arr, odds_arr = [], []

  int_arr.each_with_index do |int, index|
    int_arr[index] % 2 != 0 ? odds_arr << int_arr[index] : evens_arr << int_arr[index]
    return evens_arr.first if odds_arr.size > 1 && !evens_arr.empty?
    return odds_arr.first if evens_arr.size > 1 && !odds_arr.empty?
  end
end
