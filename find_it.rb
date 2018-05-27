def find_it(seq)
  seq.each_with_object(Hash.new(0)) { |int, int_count_hsh| int_count_hsh[int] += 1 }
     .find_val { |int, count| count.odd?}
     .first
end