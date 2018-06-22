REMOTE_CONTROL = [%w(a b c d e 1 2 3),
                  %w(f g h i j 4 5 6),
                  %w(k l m n o 7 8 9),
                  %w(p q r s t . @ 0),
                  %w(u v w x y z _ /)]

def tv_remote(word)
  characters_position = word.split("").map { |char| find_row_and_column(char) }
  current_position = [0, 0]
  total = 0

  characters_position.each do |char_position|
    total += (current_position[0] - char_position[0]).abs +
             (current_position[1] - char_position[1]).abs + 1

    current_position = char_position
  end

  total
end

def find_row_and_column(char)
  result = []

  REMOTE_CONTROL.each_with_index do |char_arr, index|
    result << index if char_arr.include? char
  end

  result << REMOTE_CONTROL[result[0]].index(char)
end
