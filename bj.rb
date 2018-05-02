# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def init_deck
  suits = %w(C D H S)
  val = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  deck = suits.each_with_object([]) do |suit, arr|
    val.map { |v| arr << [v, suit] }
  end

  deck.shuffle!
end

def deal_hand(deck)
  result = []

  2.times do |_|
    result << deck.shift
  end

  result
end

def bust?(hand)
  count_points(hand) > 21
end

def count_points(hand)
  count = total_each_card hand, 0
  if count > 21
    hand.each do |card|
      count -= 10 if card[0] == 'A'
      break if count <= 21
    end
  end

  count
end

def total_each_card(hand, count)
  hand.each do |card|
    case card[0]
    when '2'..'10' then count += card[0].to_i
    when /[JQK]/ then count += 10
    when /[A]/ then count += 11
    end
  end
  count
end

def prompt(message)
  puts "=> #{message}"
end

def hit(hand, deck)
  hand << deck.shift
end

def announce_winner(player_count, computer_count)
  system 'clear'
  if player_count > computer_count && player_count < 22
    puts "congrats you win #{player_count} to #{computer_count}"
  else
    puts "sorry, you lost #{computer_count} to #{player_count}"
  end
end

deck = init_deck

player_cards = deal_hand deck
computer_cards = deal_hand deck
player_count = nil
computer_count = nil

loop do
  system 'clear'
  p player_cards
  player_count = count_points(player_cards)
  p player_count
  break if bust? player_cards
  prompt 'Hit or Stay'
  answer = gets.chomp
  break if %w(Stay stay s S).include?(answer) || bust?(player_cards)
  next unless %(hit Hit h H).include? answer
  hit(player_cards, deck)
  system 'clear'
end

loop do
  computer_count = count_points(computer_cards)
  break if computer_count >= 17
  p computer_cards
  p computer_count
  hit computer_cards, deck
  sleep 1
end

announce_winner(player_count, computer_count)
