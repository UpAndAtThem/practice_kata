def entering_valley?(grade, current_level)
  grade == 'D' && current_level == -1
end

def counting_valleys(n, s)
  current_level = 0
  valleys = 0

  terrain_arr = s.split ""
  
  terrain_arr.each do |grade|
    case grade
    when 'U' then current_level += 1
    when 'D' then current_level -= 1
    end

    valleys += 1 if entering_valley? grade, current_level
  end
  valleys
end
