class Hamming
  def self.equal_length?(str1, str2)
    str1.length == str2.length
  end

  def self.compute(strand1, strand2)
    raise ArgumentError unless equal_length? strand1, strand2

    strand1.length.times.reduce(0) do |mismatches, i|
      strand1[i] == strand2[i] ? mismatches : mismatches + 1
    end
  end
end
