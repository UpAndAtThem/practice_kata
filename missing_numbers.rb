def missing(arr)
  (arr[0]..arr[-1]).each_with_object([]) do |num, ret_arr|
    ret_arr << num unless arr.include? num
  end
end

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []