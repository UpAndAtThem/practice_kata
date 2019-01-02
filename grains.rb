class Grains
  NUM_SQUARES = 64

  def self.square(position)
    raise ArgumentError unless (1..NUM_SQUARES).include?(position)
    2 ** (position - 1)
  end

  def self.total
    (1..NUM_SQUARES).sum { |position| square position }
  end
end