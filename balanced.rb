# write a method that takes in a string and returns a boolean if it has a balanced set of parenthesis

def balanced?(string)
  count = 0

  string.split("").each do |char|
    case char
    when "(" then count += 1
    when ")" then count -= 1
    end

    return false if count < 0
  end

  return count.zero? ? true : false
end