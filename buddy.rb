def buddy(start, nd)
  start.upto(nd) do |first_num|
    first_num_divisors = find_divisors first_num
    second_num = first_num + 1

    loop do
      second_num_divisors = find_divisors second_num

      sum_eq_compared = (first_num_divisors.reduce(&:+) - 1) == second_num
      sum_eq_first = (second_num_divisors.reduce(&:+) - 1) == first_num

      both_equal = [sum_eq_first, sum_eq_compared].all? { |bool| bool == true }

      return [first_num, second_num] if both_equal

      second_num += 1
      break if second_num > first_num * 2
    end
  end
  'Nothing'
end

def find_divisors(int)
  divisors = []

  1.upto(int / 2) do |possible_divisor|
    divisors << possible_divisor if (int % possible_divisor).zero?
  end

  divisors
end

buddy(2000, 3000) # returns [2024, 2295]
