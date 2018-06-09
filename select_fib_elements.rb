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


def fib_recursion(terminating_num, arr)
  arr += [arr[-1] + arr[-2]]
 
  return arr if arr[-1] > terminating_num

  fib_recursion(terminating_num, arr)
end

p fib_recursion(39, [0,1])