class Transpose
  def self.transpose(matrix_str)
    return matrix_str if matrix_str.empty?

    matrix_arr = matrix_str.split("\n").map(&:chars)

    row_length = matrix_arr.max_by { |arr| arr.size }.length

    matrix_arr = matrix_arr.map do |arr|
      (row_length - arr.size).times { arr << " "}
      arr
    end

    matrix_arr.transpose.map { |arr| arr.join }.join("\n").strip
  end
end
