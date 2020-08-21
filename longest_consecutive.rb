def longest_consecutive(str)
  letter_hash = {}
  current_letter = str[0]
  letter_count = 1
  remaining_letters = str[1, str.length - 1]

  remaining_letters.split("").each do |next_letter|
    if current_letter == next_letter
      letter_count += 1
    elsif letter_hash[current_letter]
      letter_hash[current_letter] = letter_count if letter_hash[current_letter] < letter_count
      letter_count = 1
    else
      letter_hash[current_letter] = letter_count
      letter_count = 1
    end

    current_letter = next_letter
  end
end
