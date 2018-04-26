arr = [%w(1 12 69), %w(1, 6, 16), %w(0 100 62), %w(-1 10 5)]

new_sorted = arr.sort_by do |sub_arr|
               sub_arr.map(&:to_i)
             end

p new_sorted