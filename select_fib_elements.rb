def fib(max_fib)
  fibon = [0,1]

  loop do
    break if fibon[-1] > max_fib
    fibon += [fibon[-1] + fibon[-2]]
  end
  fibon
end

def select_fib_elements(arr)
  fib_arr = fib(arr.size)
  result = arr.select.with_index { |elem, index| fib_arr.include? index }
end
