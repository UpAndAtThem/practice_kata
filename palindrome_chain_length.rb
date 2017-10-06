# Write a method palindrome_chain_length which takes a positive number 
# and returns the number of special steps needed to obtain a palindrome. 
# The special step is: "reverse the digits, and add to the original number". 
# If the resulting number is not a palindrome, repeat the procedure with the sum 
# until the resulting number is a palindrome.

# If the input number is already a palindrome, the number of steps is 0.

# For example, start with 87:

# 87 + 78 = 165; 165 + 561 = 726; 726 + 627 = 1353; 1353 + 3531 = 4884

# 4884 is a palindrome and we needed 4 steps to obtain it, so palindrome_chain_length(87) == 4

def is_palindrome? int
  int == int.to_s.reverse.to_i
end

def next_number int
  int + int.to_s.reverse.to_i
end

def num_until_palindrome(int)
  current_num = int
  count = 0
  loop do
    break if is_palindrome? current_num
    current_num = next_number current_num
    count += 1
  end
  count
end