def wave(string)
  0.upto(string.length - 1).with_object([]) do |index, result|
     dup = string.dup
     dup[index] = dup[index].capitalize
     result << dup
  end
end

p wave("hello") #=> ["Hello", "hEllo", "heLlo", "helLo", "hellO"]