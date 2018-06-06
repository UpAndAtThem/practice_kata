def num_repeats(string)
  count = 0
  unique_letters = string.chars.uniq
  
  unique_letters.each do |letter|
    count += 1 if string.count(letter) > 1
  end

  count
end
