DEC_TO_HEX = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F'}

def rgb_to_hex(rgb_1, rgb_2, rgb_3)
  rgb_1 = limit_adjust rgb_1
  rgb_2 = limit_adjust rgb_2
  rgb_3 = limit_adjust rgb_3
  hex_val = ''
  [rgb_1, rgb_2, rgb_3].each do |rgb|
    hex_val << dec_to_hex(rgb)
  end
  hex_val
end

def dec_to_hex(int)
  places_arr = base_x_powers int, 16
  hex = ''
  return '00' if int == 0
  places_arr.reverse.each do |power|
    if power < int
     hex << DEC_TO_HEX[(int / power).to_i]
     hex << DEC_TO_HEX[(((int / power) % (int / power).to_i) * power).to_i].to_s
     return hex
    end
  end
end

def limit_adjust(int)
  int > 255 ? 255.0 : int.to_f
end

def base_x_powers(int, base)
  current_exponent = 0
  base_power_arr = []
  loop do
    base_power_arr << base ** current_exponent
    break if int < base ** current_exponent
    current_exponent += 1
  end
  base_power_arr
end

p rgb_to_hex(255, 148, 0)
