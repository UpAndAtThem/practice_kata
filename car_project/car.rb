class Car
  attr_reader :year, :make, :model, :color, :speed

  def initialize(year, make, model, color)
    @year = year
    @model = model
    @make = make
    @color = color
    @speed = 0
  end

  def go_fast
    puts "Vroom Vroom Vrooom!!!"
  end

  def color=(new_color)
    @color = new_color
  end

  def speed_up(increase)
    @speed += increase
  end

  def slow_down(decrease)
    @speed -= decrease
  end

  def to_s
    "#{@color} #{@year} #{make} #{model}."
  end
end


require 'minitest/autorun'

require 'minitest/reporters'
MiniTest::Reporters.use!

require 'simplecov'
SimpleCov.start


class CarTest < MiniTest::Test
  def setup
    @probe = Car.new(1992, 'Ford', 'Probe', 'Red')
  end

  def test_go_fast
    assert_output("Vroom Vroom Vrooom!!!\n"){ @probe.go_fast}
  end

  def test_color
    assert(@probe.color == 'Red')
    @probe.color = 'Blue'
    assert(@probe.color == 'Blue')
  end

  def test_speed_up
    assert(@probe.speed == 0)
    @probe.speed_up(100)
    assert(@probe.speed == 100)
  end

  def test_slow_down
    @probe.speed_up(50)
    assert(@probe.speed == 50)
    @probe.slow_down(30)
    assert(@probe.speed == 20)
  end

  def test_to_s
    assert_output("Red 1992 Ford Probe.\n"){ puts @probe }
  end
end




