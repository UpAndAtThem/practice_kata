fib_enum = Enumerator.new do |yielder|
  fib = []
  
  loop do
    if fib.size < 2
      yielder << 1
      fib << 1
    else
      yielder << fib.first + fib.last
      fib = [fib[1], fib.first + fib.last]
    end
  end
end