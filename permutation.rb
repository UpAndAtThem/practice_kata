def wildcard(string)
  result = []
  
  combinations = [0,1].repeated_permutation(string.split("").count('?')).to_a
  combinations.size.times do |index|
    result << string.split("")
              .map { |char| char == '?' ? combinations[index].shift : char }
              .join("")
  end
  result
end

p wildcard '1?1' # -> ['1010', '1110', '1011', '1111']