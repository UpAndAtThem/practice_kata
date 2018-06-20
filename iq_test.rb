def iq_test(num_string)
  odd_num_out = num_string.split
                          .map(&:to_i)
                          .partition { |num| num.odd?}
                          .select { |arr| arr.length == 1}
                          .flatten[0]

  num_string.split.index(odd_num_out.to_s) + 1 #returns the position in the array (not index)
end

iq_test("2 4 7 8 10") #=> 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") #=> 2 // Second number is even, while the rest of the numbers are odd