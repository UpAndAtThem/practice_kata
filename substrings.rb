def substring(string)
  result = []
  string_arr = string.chars

  loop do
    result += string_arr.map.with_index do |(char, substring_arr), index|
      string_arr[0, index + 1].join
    end

    string_arr.shift
    break if string_arr.empty?
  end

  result.reject{ |substring| substring.length == 1 }
end
