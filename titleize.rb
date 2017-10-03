def titleize(str)
  str.split.map {|word| word.capitalize}.join" "
end

book = "the shinning"
