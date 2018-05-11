def piglatinify(string)
  word_arr = string.split
  count = 0

  word_arr.map do |word|
    unless word =~ /[a-zA-Z]/
      word
    else
      word  word[0]

      word_char_arr = word.split""
      word_char_arr.shift

      word = word_char_arr.join""
      word << 'ay'
    end
  end.join" "
end

def clever_piglatinify(string)
  string.gsub(/([a-zA-Z])([a-zA-Z]*)/, '\2\1ay')
end

p piglatinify "Pig latin is cool !"