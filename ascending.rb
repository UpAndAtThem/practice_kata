def is_asc_order(num_arr)
  num_arr.combination(2).all? { |left, right| left < right } 
end

is_asc_order([1,2,5,7,19]) # returns True