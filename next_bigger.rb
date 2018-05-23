# given an integer. return the next biggest number using all the digits.

def next_bigger(int)
  max = int.to_s
           .split('')
           .map(&:to_i)
           .sort { |a, b| b <=> a }
           .join.to_i

  (int + 1..max).each do |number|
    return number if number.to_s.split('').sort == int.to_s.split('').sort
  end
end
