require 'pry'

class Brackets
  def initialize(bracket_str)
    @symbols_arr = bracket_str.chars
    @symbol_counts = {parenthesis: 0, brackets: 0, braces: 0}
  end

  def paired?
    binding.pry
    symbols_arr.each do |symbol|
      case symbol
      when "{" then symbol_counts[:braces] += 1
      when "}" then symbol_counts[:braces] -= 1
      when "(" then symbol_counts[:parenthesis] += 1
      when ")" then symbol_counts[:parenthesis] -= 1
      when "[" then symbol_counts[:brackets] += 1
      when "]" then symbol_counts[:brackets] -= 1
      end

      return false if symbol_counts.any? { |type, val| val < 0 }
    end

    binding.pry

    symbol_counts.all? { |type, val| val == 0}
  end

  def self.paired?(bracket_str)
    Brackets.new(bracket_str).paired?
  end

  private

  attr_accessor :symbol_counts, :symbols_arr
end