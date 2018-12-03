class Robot
  def initialize(name, health, speed, tactics)
    @name = name
    @health = health
    @speed = speed
    @tactics = tactics
  end
end

module DamageInfo
  PUNCH = 20
  LASER = 30
  MISSILE = 35
end

class ThunderDome
  include DamageInfo

  attr_reader :robots
  
  def initialize(*robots)
    @robots = robots
  end

  def fight(*robots)

  end

  def match_up(*robots)
    @current_opponents = robots
  end
end

robot1 = Robot.new('Rocky', 100, 20, %w[punch punch laser missile])
robot2 = Robot.new('Missle Bob', 100, 21, %w[missile missile missile missile])

thunder_dome = ThunderDome.new(robot1, robot2)

thunder_dome.fight(robot1, robot2) # "Missile Bob has won the fight."

require 'pry'
binding.pry