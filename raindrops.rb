# Raindrops class
class Raindrops
  def self.factor?(int, poss_factor)
    (int % poss_factor).zero?
  end

  def self.convert_to_raindrop(int)
    if factor?(int, 3) then 'Pling'
    elsif factor?(int, 5) then 'Plang'
    elsif factor?(int, 7) then 'Plong'
    else int.to_s
    end
  end

  def self.convert(int)
    factors = [3, 5, 7].select { |test_factor| factor? int, test_factor }
    rain_drop_sound = factors.map { |factor| convert_to_raindrop factor }.join

    factors.empty? ? int.to_s : rain_drop_sound
  end
end
