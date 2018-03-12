TENS = %w(ten twenty thirty forty fifty sixty seventy eighty ninty)
TEENS = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eightteen nineteen)
ONES = %w(one two three four five six seven eight nine)

def int_to_word(int)
  result = ''
  current_num = int

  hundreds = current_num / 100
  current_num = current_num - (hundreds * 100)

  tens = current_num / 10
  current_num = current_num - (tens * 10)

  ones = current_num / 1
  current_num = current_num - (ones * 1)

  [hundreds, tens, ones].each_with_index do |place, index|
    if place > 0
      result << ONES[place - 1] + "-hundred-" if index == 0
      result << TENS[place - 1] + "-" if index == 1 && tens != 1
      result << TEENS[ones - 1] if index == 1 && tens == 1
      result << ONES[place -1] if index == 2 && tens != 1
    end
  end

  result_arr = result.split""
  result_arr.pop if result_arr[-1] == '-'
  result_arr.join
end


p int_to_word 999