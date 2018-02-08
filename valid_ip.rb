def valid_ip?(string)
  ip_numbers = string.split('.')

  return false if ip_numbers.length != 4

  ip_numbers.all? { |num| is_valid_ip_digit?(num.to_i) }
end

def valid_ip_digit?(int)
  (0..255).cover? int
end

valid_ip?('255.0155.1')
valid_ip?('69.69.69')
