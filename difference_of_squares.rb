class Squares
  attr_reader :num_range

  def initialize(end_range)
    @num_range = (1..end_range)
  end

  def square_of_sum
    num_range.sum ** 2
  end

  def sum_of_squares
    num_range.map { |num| num ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end