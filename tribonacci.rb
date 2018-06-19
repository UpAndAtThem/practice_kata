def tribonacci(signature,n)
  return signature[0, n] if n <= 3
  
  4.upto(n) { |num| signature += [signature[-3, 3].reduce(&:+)] }
  signature
end

tribonacci([1,1,1], 10) #=> [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]