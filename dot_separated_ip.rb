def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word) && input_string[-1] =~ /[0-9]/
  end

  true
end

def is_an_ip_number?(str_int)
  (1..255).include? str_int.to_i
end

dot_separated_ip_address? "1.255.45.3."
