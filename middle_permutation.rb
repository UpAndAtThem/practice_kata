def middle_permutation(string)
  permutation_arr = string.chars.permutation
  count = 0
  permutation_arr.map{ |arr| arr.join""}.sort[(permutation_arr.size - 1)/2]
end

def middle_permutation_efficient(string)
  a = string.split("").sort.reverse
  l = a.length
  answer = []

  if a.length.odd?
    2.times {answer << a.delete_at(l/2)}
    answer << a
    return answer.join
  else
    answer << a.delete_at(l/2)
    answer << a
  
    return answer.join
  end
end
