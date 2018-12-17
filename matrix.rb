class Matrix
  attr_reader :matrix

  def initialize(str)
    @matrix = format str
  end

  def format(str)
    str.split("\n")
       .map { |row| row.scan(/\w+/).map(&:to_i) }
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end
end
