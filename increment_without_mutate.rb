result_arr = []
result_hash = {}

original_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

original_arr.each do |hash|
  hash.map do |key, value|
    result_hash[key] = value + 1
  end
  result_arr << result_hash
  result_hash = {}
end     

p original_arr
p result_arr