require 'prime'

def gap(gap_between, start, last)
  first_prime = nil
  second_prime = nil
  current = start
  loop do
    loop do
      first_prime = current if Prime.prime?(current)
      break if first_prime
      current += 1
    end
    second_num = first_prime + 1
    loop do
      second_prime = second_num if Prime.prime?(second_num)
      second_num += 1
      break if second_prime
    end
    current = second_prime
    break if current > last || second_num > last
    return [first_prime, second_prime] if second_prime - first_prime == gap_between
    first_prime = nil
    second_prime = nil
  end
end



p gap(2,100,110) # [101, 103]
p gap(8,300,400) # [359, 367]

p gap(4,100,110)# [103, 107])
p gap(6,100,110)# nil)
p gap(8,300,400)# [359, 367])
p gap(10,300,400)# [337, 347])