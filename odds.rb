#return an array of the hashes where all the values are odd

arr = [{a: [99, 5, 3]}, {b: [3, 3, 3], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

result_arr = []

arr.each do |hash|
  hash.each do |symbol, arr|
    all_odd_bool = arr.all? {|num| num % 2 != 0}
    result_arr << symbol if all_odd_bool
  end
end

result_arr