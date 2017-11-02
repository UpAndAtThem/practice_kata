require 'prime'

def gap(gap_between, start, last)
  current = start
  loop do
    first_prime = nil
    second_prime = nil
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
    nil
  end
end

p gap(2, 3, 6)