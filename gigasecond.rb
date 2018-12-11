# Calculate the moment when someone has lived for 10^9 seconds.

# A gigasecond is 10^9 (1,000,000,000) seconds.
require 'pry'

class Gigasecond
  def self.from(time)
    time + (10 ** 9)
  end
end