def titleize(str)
  str.split.map {|word| word.capitalize}.join" "
end

def titleize!(str)
  counter = 0

  str[0] = str[0].capitalize

  loop do
    str[counter + 1] = str[counter + 1].capitalize if str[counter] == ' '
    
    counter += 1
    break if counter == str.size
  end
  str
end

book = "the shinning"

titleize book
puts book

titleize! book
puts book
