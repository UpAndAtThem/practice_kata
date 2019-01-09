class Robot
  attr_reader :name

  def self.forget
    @@robots = Hash.new(false)
  end

  forget

  def initialize
    @name = randomized_name
  end

  def randomized_name
    loop do
      random_letters = ('A'..'Z').to_a.sample(2).join
      random_numbers = (0..9).to_a.sample(3).join

      random_name = random_letters + random_numbers

      unless @@robots[random_name]
        @@robots[random_name] = true
        return random_name
      end
    end
  end

  def reset
    @name = randomized_name
  end
end