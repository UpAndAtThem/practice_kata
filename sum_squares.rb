def get_next(int, square)
  return nil if square < 0 || int <= 0
  return []  if square.zero?

  while int > 0
    int -= 1
    result = get_next(int, square - int * int)
    return result + [int] unless result.nil?
  end
  nil
end

def break_down(int)
  get_next(int, int * int)
end

p break_down(99)
