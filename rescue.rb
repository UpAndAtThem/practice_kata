class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
  end

  def speed_up(increase)
    @current_speed += increase
  end

  def brake(decrease)
    @current_speed -= decrease
  end

  def shut_off
    @current_speed = 0
  end
end

require 'pry'
binding.pry