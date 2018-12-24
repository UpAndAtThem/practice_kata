# Raindrops class

class Raindrops
  NOISE = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(int)
    drop = [3, 5, 7].map do |poss_factor|
      (int % poss_factor).zero? ? NOISE[poss_factor] : ''
    end.join

    drop.empty? ? int.to_s : drop
  end
end


