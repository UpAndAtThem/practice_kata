def nearby_az(string)
  count = 0

  string.chars.each do |letter|
    count += 1
    count = 0 if %w(a A).include? letter

    return true if letter.downcase == 'z' && count <= 3
  end

  false
end

