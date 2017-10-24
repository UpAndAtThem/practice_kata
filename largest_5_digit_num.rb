# In the following 6 digit number:

# 283910
# 91 is the greatest sequence of 2 digits.

# In the following 10 digit number:

# 1234567890
# 67890 is the greatest sequence of 5 digits.

# Complete the solution so that it returns the largest five digit number found within the number given. 
# The number will be passed in as a string of only digits. It should return a five digit integer. 
# The number passed may be as large as 1000 digits.

def solution(digits)
  num_arr = []
  digits.split("").length.times do |index|
    num_arr << digits[index..index+4].to_i if digits[index..index + 4].length.to_i
  end
  num_arr.max
end

p solution '1234567891011122034802938410923840128340192834018239999098999912310928341029'