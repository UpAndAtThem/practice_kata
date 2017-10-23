def to_camel_case(string)
  result = ''
  word_arr = string.split"-" if string.split("").any?{|char| char == '-'}
  word_arr = string.split"_" if string.split("").any?{|char| char == '_'}
  word_arr.each_with_index do |word, index| 
    result << word.downcase if index == 0
    result << word.capitalize if index != 0
  end
  result
end

p to_camel_case "The-stealth-warrior"

