# Raindrops class
class Raindrops
  NOISE = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(int)
    drop = [3, 5, 7].each.with_object('') do |poss_factor, drop_sound|
      drop_sound << NOISE[poss_factor] if (int % poss_factor).zero?
    end

    drop.empty? ? int.to_s : drop
  end
end
