require 'pry'

def solution(string, comment_chars)
  comment_range = []
  num_comments = 0
  i = 0

  string.chars.each do |char|
    num_comments += 1 if comment_chars.include? char
  end

  begin_comment = 0
  num_comments.times do |x|
    i = 0
    loop do
      begin_comment = string =~ /#{comment_chars[i]}/
      i += 1 if !begin_comment
      break if begin_comment
    end
    end_comment = string =~ /\n/
    end_comment = string[-1] if !end_comment
    string.slice!(begin_comment...end_comment)
    begin_comment = nil
  end
  puts string
end

result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"