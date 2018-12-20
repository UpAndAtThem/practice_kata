class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length

    strand1.chars.each_with_index.count do |obj, index|
      obj != strand2[index]
    end
  end
end
