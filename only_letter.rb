def select_letter(str, letter)
  count = 0
  result_str = ''

  loop do
    break if str.length == count

    current_letter = str[count]
    result_str << current_letter if current_letter == letter 

    count += 1
  end

  result_str
end

question = 'How many times does a particular character appear in this sentence?'

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""