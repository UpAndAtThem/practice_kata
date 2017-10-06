# Complete the solution so that it reverses all of the words within the string passed in.

# Example:

# solution("The greatest victory is that which requires no battle") 
# # should return "battle no requires which that is victory greatest The"

def solution(string)
  string.split.reverse.join" "
end

solution("The greatest victory is that which requires no battle")