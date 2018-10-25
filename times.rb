def my_times(number)
  iterations = number
  count = 0

  loop do
    yield count

    count += 1
    break if count >= iterations
  end

  number
end


my_times(5) { |index| p index}