require 'Prime'

class Prime
  def self.nth(position)
    raise ArgumentError if position < 1
    Prime.instance.first(position).last
  end
end