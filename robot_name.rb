class Robot
  attr_reader :name

  def self.forget
    @@robots = Array(('AA000'..'ZZ999')).shuffle
  end

  forget

  def initialize
    @name = randomized_name
  end

  def randomized_name
    @@robots.pop
  end

  def reset
    @name = randomized_name
  end
end