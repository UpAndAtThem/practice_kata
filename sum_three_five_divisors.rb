def sum_three_five_divisors(number)
 (1...number).select { |test_num| test_num % 3 == 0 || test_num % 5 == 0 }.inject(&:+)
end

sum_three_five_divisors(200) #=> 9168