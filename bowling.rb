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

    frame += 1
    break if frame > 10
  end
  score_card
end

def roll(pins)
  (0..(pins)).to_a.sample
end

p bowl

# roll 10
# roll 10
# roll 10
# 