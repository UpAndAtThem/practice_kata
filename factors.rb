def factors(num)
  factors = []
  1.upto(num) do |divisor|
    factors << divisor if num % divisor == 0
  end
  factors
end

factors 100 # => [1, 2, 4, 5, 10, 20]