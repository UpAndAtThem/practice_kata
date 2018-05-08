def partlist(word_arr)
  result_arr = Array.new([])
  count = 1

  loop do
    populate_position result_arr, word_arr, count
    count += 1
    break if count >= word_arr.size
  end
  
  result_arr
end

def populate_position(arr, string_arr, num_words)
  result_first_string = ''
  result_second_string = ''
  result_arr = []
  tmp_arr = []

  num_words.times do |word|
    tmp_arr << string_arr[word]
  end

  result_first_string << tmp_arr.join(" ")

  tmp_arr = []
  count = (string_arr.size - num_words)

  (string_arr.size - num_words).times do |word|
    tmp_arr << string_arr[-count]
    count -= 1
    break if count.zero?
  end

  result_second_string << tmp_arr.join(" ")
  result_arr[0] = result_first_string
  result_arr[1] = result_second_string 

  arr << result_arr
  arr
end