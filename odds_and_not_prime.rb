def odds_and_not_prime(int)
  result = (1..int).select do |test_int|
    test_int.odd? && not_prime?(test_int)
  end

  result.count
end

def not_prime?(int)
  return true if int == 1

  factors = factors(int)
  factors.size > 2
end

def factors(int)
  (1..int).select { |test_int| int % test_int == 0 }
end

odds_and_not_prime(48) == 10