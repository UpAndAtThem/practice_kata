class Card
  attr_accessor :suit, :rank

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck; end
