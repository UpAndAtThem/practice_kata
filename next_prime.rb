def next_prime(int)
  prime_test = int + 1

  loop do
    factor_arr = factors(prime_test)
    return prime_test if factor_arr.size == 2

    prime_test += 1
  end
end

def factors(int)
  int.downto(1).with_object([]) { |test_num, factors| factors << test_num if int % test_num == 0}
end
