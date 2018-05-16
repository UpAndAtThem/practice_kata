require 'pry'

def bowl
  score_card = [[],[],[],[],[],[],[],[],[],[]]

  frame = 1
  pins = 10
  pins_hit = 0
  frame_count = 0

  loop do
    2.times do |_|

      pins = 10 if score_card[frame -1].empty?

      pins_hit = roll(pins)
      pins -= pins_hit

      score_card[frame - 1] << pins_hit 
    end

    frame_count = score_card[frame-1].reduce(&:+)

    if score_card[frame-1][0] == 10
     score_card[frame-1] = ['X']
    elsif frame_count == 10 && score_card[frame-1].size == 2
      score_card[frame-1][1] = "/"
    end
    #binding.pry
    frame += 1
    break if frame > 9
  end
  score_card
end

def ai_difficulty(mode)

end

def tenth_frame(game_details)
  game_details
end

def roll(pins)
  (0..(pins)).to_a.sample()
end

def add_frame(game_details)
  last_three_games = (score_card[frame-3..frame-1])
  if frame < 10
    if score_card[frame- 2].include?('/') 
      score += score
    elsif false 

    end
  elsif false
    

  end
  
end

p bowl