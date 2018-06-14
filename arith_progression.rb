# first element: 1, difference: 2, how many: 5

def arithmetic_sequence_elements(element, difference, how_many)
  result_arr = []

  while result_arr.size < how_many
    result_arr << element
    element += difference
  end
  
  result_arr.map(&:to_s).join(", ")
end

p arithmetic_sequence_elements(1, 2, 5) #== "1, 3, 5, 7, 9"