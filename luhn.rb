class Luhn
  private

  def self.doubling_operation(arr)
    arr.map.with_index do |elem, i| 
      new_num = i.odd? ? elem * 2 : elem
      new_num > 9 ? new_num - 9 : new_num
    end
  end

  public

  def self.valid?(num_string)
    num_string.gsub!(/\s/, '')

    return false if num_string.length <= 1 || num_string.match(/[^0-9]/)

    reversed_numbers = num_string.reverse.chars.map(&:to_i)

    doubled = doubling_operation reversed_numbers
      
    doubled.sum % 10 == 0
  end
end