def each_cons(arr, num_consec = 2)
  index = 0

  loop do
    yield *arr[index, num_consec]

    index += 1
    break if index + num_consec == arr.length + 1
  end

  nil
end
