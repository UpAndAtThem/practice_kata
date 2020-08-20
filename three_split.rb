# For a = [0, -1, 0, -1, 0, -1], the output should be 4.

# Here are all possible ways:

# [0, -1] [0, -1] [0, -1]
# [0, -1] [0, -1, 0] [-1]
# [0, -1, 0] [-1, 0] [-1]
# [0, -1, 0] [-1] [0, -1]

def three_split(int_arr)
  results = [];
  arr1, arr2 = nil

  (0...(int_arr.length - 1)).each do |idx_split|
    arr1, arr2 = int_arr.partition.with_index do |_, idx|
      true if idx <= idx_split
    end

    if (arr1.reduce(&:+) == (2 * arr2.reduce(&:+)))
      results << arr2
      break
    end
  end

  (0...(arr1.length - 1)).each do |idx_split|
    arrs = arr1.partition.with_index do |_, idx|
      true if idx <= idx_split
    end
    tmp1, tmp2 = arrs

    if (tmp1.reduce(&:+) == (tmp2.reduce(&:+)))
      results << tmp1
      results << tmp2
      break
    end
  end

  results
end

p three_split [10, 5, 11, 5, 10, 11, 11, 10, 5]