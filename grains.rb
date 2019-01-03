class Grains
  NUM_SQUARES = 64
  SQUARES_RANGE = (1..NUM_SQUARES)

  def self.square(position)
    raise ArgumentError unless SQUARES_RANGE.cover?(position)
    2 ** (position - 1)
  end

  def self.total
    SQUARES_RANGE.sum(&method(:square))
  end
end