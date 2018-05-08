def round_to_next_5(int)
  return int if int % 5 == 0
  
  is_pos = int.positive?
  last_number = int.to_s[-1].to_i

  is_pos ? int + (5 - ((last_number - 5) % 5)) : (int += int.abs % 5)
end

round_to_next_5(999) # => 1000