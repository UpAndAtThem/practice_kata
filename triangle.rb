class Triangle
  attr_reader :sides, :is_valid

  def initialize(sides_len_arr)
    @sides = sides_len_arr
    @is_valid = valid_triangle?
  end

  def valid_triangle?
    sides.none?(&:zero?)
    sides.permutation.to_a.all? { |arr| arr[0,2].reduce(&:+) > arr[-1] }
  end

  def equilateral?
    return false unless is_valid
    sides.uniq.length == 1
  end

  def scalene?
    return false unless is_valid
    sides.group_by { |elem| elem}.values.all? { |arr| arr.length == 1 }
  end

  def isosceles?
    return false unless is_valid
    sides.group_by { |elem| elem}.values.any? { |arr| [3, 2].include? arr.length }
  end
end