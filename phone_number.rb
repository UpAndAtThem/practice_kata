class PhoneNumber
  private

  def self.format(phone_str)
    phone_str = phone_str.scan(/\w+/).join

    has_leading_one = phone_str[0] == '1'
    has_leading_one ? phone_str[1..-1] : phone_str
  end

  def self.correct_length?(str)
    str.length == 10
  end

  def self.valid_numbers?(str)
    [str[0], str[3]].all? { |elem| elem != '1' && elem != '0' }
  end

  def self.all_numbers?(str)
    str.chars.all? { |char| char =~ /[0-9]/}
  end

  def self.valid_phone?(formatted_str)
    correct_length = correct_length? formatted_str
    valid_number = valid_numbers? formatted_str
    all_numbers = all_numbers? formatted_str

    correct_length && valid_number && all_numbers
  end

  public

  def self.clean(phone_number)
    formatted = format phone_number
    return nil unless valid_phone? formatted

    formatted
  end
end