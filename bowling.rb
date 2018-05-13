require 'pry'

def bowl
  score_card = [[],[],[],[],[],[],[],[],[],[]]
  frame = 1
  pins = 10
  pins_hit = 0
  frame_count = 0

  game_details = {score_card: score_card, frame: 1, pins: 10,
                  pins_hit: 0, frame_count: 0}

  loop do
    2.times do |_|

      game_details[:pins] = 10 if game_details[:score_card][game_details[:frame] -1].empty?

      game_details[:pins_hit] = roll(game_details[:pins])
      game_details[:pins] -= game_details[:pins_hit]

      game_details[:score_card][game_details[:frame] - 1] << game_details[:pins_hit] 
    end

    game_details[:frame_count] = game_details[:score_card][game_details[:frame]-1].reduce(&:+)

    if game_details[:score_card][game_details[:frame]-1][0] == 10
     game_details[:score_card][game_details[:frame]-1] = ['X']
    elsif game_details[:frame_count] == 10 && game_details[:score_card][game_details[:frame]-1].size == 2
      game_details[:score_card][game_details[:frame]-1][1] = "/"
    end

    game_details[:frame] += 1
    break if game_details[:frame] > 9
  end
  tenth_frame(game_details)
  
  game_details

end

def ai_difficulty(mode)

end

def tenth_frame(game_details)
  game_details
end

def roll(pins)
  (0..(pins)).to_a.sample()
end

def add_frame(score_card, score, frame)

end

p bowl

# roll 10
# roll 10
# roll 10
# 