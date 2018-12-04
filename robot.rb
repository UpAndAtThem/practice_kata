module DamageInfo
  HIT_VALUE = { 'punch' => 20,
                'laser' => 30,
                'missile' => 35 }

  def hit_points_dealt(attack_type)
    HIT_VALUE[attack_type]
  end
end

class Robot
  include DamageInfo

  attr_accessor :name, :health, :speed, :tactics

  def initialize(name, health, speed, tactics)
    @name = name
    @health = health
    @speed = speed
    @tactics = tactics
  end

  def attack(other)
    current_attack_hit_points = self.hit_points_dealt(tactics.shift)
    return unless current_attack_hit_points

    other.health -= current_attack_hit_points
  end
end

class ThunderDome
  include DamageInfo

  attr_accessor :robots

  def initialize(robots)
    @robots = robots
  end

  def add_robot(robot); robots << robot end
  def add_robots(robot_arr); self.robots += robot_arr end

  def fight(robots)
    num_players_out_of_ammo = 0

    loop do 
      robots.each_with_index do |robot, index|
        opponent = if (index + 1) == robots.size
                     robots[0]
                   else
                     robots[index + 1]
                   end
        
        robot.attack opponent

        robots.delete(opponent) if opponent.health < 1
        break if robots.size == 1
      end

      break if robots.size == 1
    end
    
    puts "#{robots[0].name} has won the fight!"
  end

  def match_up(robots)
    @current_opponents = robots
  end
end

robot1 = Robot.new('Rocky', 100, 20, %w[punch punch laser missile])
robot2 = Robot.new('Missle Bob', 100, 21, %w[missile missile missile missile])

thunder_dome = ThunderDome.new([robot1, robot2])

thunder_dome.fight([robot1, robot2]) # "Missile Bob has won the fight!"
