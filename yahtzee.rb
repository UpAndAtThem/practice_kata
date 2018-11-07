# Select Number of players
# Players set name
# Players roll starting with player 1
  # if the player still has unmarked values on their card, the player chooses which dice to keep (select dice number above the die)
  # player rolls 2nd time with non kept dice. chooses which dice to keep (the kept dice from prev roll must be selected again)
  # player rolls 3rd time, then chooses where to make mark (numbered rows) if the score is zero it will prompt you to confirm to put zero.
  # changes to next player and continues the loop.
# Grand Scores output.
# Winner announced.
# Play again?

class YahtzeeGame
  def initialize
    @card = YahtzeeCard.new
    @cup = YahtzeeCup.new
    @players = []
    require 'pry'
    binding.pry
  end
end

class YahtzeeCard
  def initialize
    @upper_section = UpperSection.new
    @lower_section = LowerSection.new
    @grand_total = 0
  end
end

class YahtzeeCup
  def initialize
    @dice = 5.times.with_object({}) { |num, arr| arr[num + 1] = Dice.new}
  end

  def shake_cup

  end

  def throw_dice

  end
end

class LowerSection < YahtzeeCard
  def initialize

  end
end

class UpperSection < YahtzeeCard
  def initialize

  end
end

class Dice
  def roll
    (1..6).sample
  end
end

YahtzeeGame.new