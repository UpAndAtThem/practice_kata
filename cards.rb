# Build a deck of cards where each card resembles "ace of hearts"

class Cards
  SUITS = %w(clubs diamonds hearts spades)
  VALUE = %w(two three four five six seven eight nine ten jack queen king ace)
  
  attr_accessor :cards
  
  def initialize
    @cards = SUITS.product(VALUE).flat_map{ |arr| "#{arr[1]} of #{arr[0]}"}
  end
  
  def shuffle
    @cards = cards.shuffle
  end

  def deal_card
    cards.pop
  end
end

deck = Cards.new

p deck.shuffle
p deck.deal_card
p deck.cards.size