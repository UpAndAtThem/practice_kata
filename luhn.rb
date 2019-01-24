class Luhn
  def self.valid?(str)
    new(str).valid?
  end

  def initialize(str)
    @int_str = str.gsub(/\s/, '')
    @numbers = int_str.chars.map(&:to_i)
  end

  def valid?
    return if invalid_input?
    doubling_operation_sum(numbers).modulo(10).zero?
  end

  private

  attr_reader :int_str, :numbers
  
  def invalid_input?
    int_str.length <= 1 || int_str.match(/[^0-9]/)
  end

  def adjust_num(second)
    second.digits.sum
  end

  def doubling_operation_sum(arr)
    arr.reverse.each_slice(2).sum do |first, second = second.to_i|
      first + adjust_num(second * 2)
    end
  end
end