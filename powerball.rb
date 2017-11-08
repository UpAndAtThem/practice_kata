# pick 5 balls ranging from 1 to 69
# pick one powerball ranging from 1 to 26
# computer does the same
# compare player with computer
# determine dollar amount won
require "pry"
GRAND_PRIZE = 399999999
ORDER = %w(first second third fourth fifth)

def prompt(str)
  puts "=> #{str}"
end

def greeting
  prompt "Welcome to Powerball where all of your wildest dream could come true.. heavy emphasis on could"
end

def player_choose_white_balls
  white_balls = initialize_white_balls
  powerballs = initialize_powerballs
  count = 0
  chosen_balls = []
  loop do
    chosen_ball = 0
    choose_balls_prompt count
    loop do
      chosen_ball = gets.chomp.to_i
      break if white_balls.include? chosen_ball
      prompt "that is not an available option"
      choose_balls_prompt count
    end
    chosen_balls << chosen_ball
    count += 1
    remove_ball!(chosen_ball, white_balls)
    break if count == 5
  end
  chosen_balls
end

def player_choose_powerball
  powerballs = initialize_powerballs
  prompt "choose your powerball"
  player_power_ball = 0
  loop do
    player_power_ball = gets.chomp.to_i
    break if powerballs.include? player_power_ball
    prompt "that is not an available option"
    prompt "choose your powerball"
  end
  player_power_ball
end

def random_white_balls
  white_balls = initialize_white_balls
  winning_balls = []
  5.times do |_|
    winning_ball = white_balls.sample()
    remove_ball! winning_ball, white_balls
    winning_balls << winning_ball
  end
  winning_balls
end

def random_powerball
  powerballs = initialize_powerballs
  powerballs.sample
end

def choose_balls_prompt(count)
  prompt "choose your #{ORDER[count]} ball."
end

def remove_ball!(ball, balls)
  balls.delete ball
end

def initialize_white_balls
  (1..69).to_a
end

def initialize_powerballs
  (1..26).to_a
end

def amount_won(matching_white, matching_pb)
  if matching_white == 5 && matching_pb
    GRAND_PRIZE
  elsif matching_white == 5
    1000000
  elsif matching_white == 4 && matching_pb
    50000
  elsif matching_white == 4
    100
  elsif matching_white == 3 && matching_pb
    100
  elsif matching_white == 3
    7
  elsif matching_white == 2 && matching_pb
    7
  elsif matching_white == 1 && matching_pb
    4
  elsif matching_white == 0 && matching_pb
    4
  else
    0
  end
end

def num_white_matches(player_white, winning_white)
  count = 0
  winning_white.each do |ball|
    count += 1 if player_white.include? ball
  end
  count
end

def powerball_matched?(player_pb, winning_pb)
  player_pb == winning_pb
end

greeting
player_white_balls = player_choose_white_balls
player_powerball = player_choose_powerball
winning_white_balls = random_white_balls
winning_powerball = random_powerball
num_white_matched = num_white_matches(player_white_balls, winning_white_balls)
pb_matched = powerball_matched?(player_powerball, winning_powerball)
winnings = amount_won(num_white_matched, pb_matched)
p "the winning ticket is #{winning_white_balls + [[winning_powerball]]}"
p "you have the numbers #{player_white_balls + [[player_powerball]]}"
p "you win $#{winnings}"

#num_powerball = num_powerball_matches()
# player_winnings = amount_won()


#player chooses 5 balls