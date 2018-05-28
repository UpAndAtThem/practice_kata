def remov_nb(end_range)
  pairs = []
  (1..end_range).to_a.permutation(2).to_a.each do |excluded_pair|
    pairs << excluded_pair if ((1..end_range).to_a.reduce(&:+) - excluded_pair.reduce(&:+)) == excluded_pair.reduce(&:*)
  end
  pairs
end
