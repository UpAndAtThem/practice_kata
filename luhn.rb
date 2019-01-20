require 'pry'

class Luhn
  attr_reader :int_str, :numbers

  def initialize(str)
    @int_str = str.gsub(/\s/, '')
    @numbers = int_str.chars.map(&:to_i)
  end

  def self.valid?(str)
    Luhn.new(str).valid?
  end

  def invalid_input?
    int_str.length <= 1 || int_str.match(/[^0-9]/)
  end

  def doubling_operation(arr)
    arr.reverse.each_slice(2).map do |first, second|
      second = second.to_i

      second *= 2
      second -= 9 if second > 9

      first + second
    end
  end

  def sum_divisible_ten? numbers
    numbers.sum % 10 == 0
  end

  def valid?
    return false if invalid_input?
    doubled = doubling_operation numbers
    sum_divisible_ten? doubled
  end
end