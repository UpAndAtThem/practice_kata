class Luhn
  def self.valid?(str)
    new(str).valid?
  end

  def initialize(str)
    @int_str = str.delete(' ')
    @numbers = int_str.chars.map(&:to_i)
  end

  def valid?
    return if invalid_input?
    luhn_sum(numbers).modulo(10).zero?
  end

  private

  attr_reader :int_str, :numbers
  
  def invalid_input?
    int_str.length <= 1 || int_str.match(/[^0-9]/)
  end

  def luhn_sum(arr)
    arr.reverse.each_slice(2).sum do |first, second|
      first + (second.to_i * 2).digits.sum
    end
  end
end