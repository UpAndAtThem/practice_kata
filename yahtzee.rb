class YahtzeeCard
  def initialize
    @upper_section = %w[ones twos threes fours fives sixes].each_with_object(Hash.new) do |number, upper_section|
      upper_section[number] = 0
    end
  end


end

class Dice
  def roll
    (1..6).sample
  end
end

p YahtzeeCard.new