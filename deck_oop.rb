require 'pry'

class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    self.value = value
    self.suit = suit
  end
end

class Deck

  def initialize
    @deck = reset_deck
  end

  def reset_deck
    value_suit_arr = ((2..10).to_a + %w(j q k a)).product(%w(clubs diamonds hearts spades))

    value_suit_arr.each_with_object([]) do |card, return_deck|
      return_deck << Card.new(card.first, card.last)
    end
  end
end

p Deck.new