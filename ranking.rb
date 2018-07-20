def solution(number)
  result = []
 (1...number).each do |test_num|
   result << test_num if test_num % 3 == 0 || test_num % 5 == 0
 end
 result.inject(&:+)
end

p solution(200)