module Gaits
  def walk
    "clip... clop... clip... clop"
  end

  def trot
    "clipclop... clipclop... clipclocp... clipclop"
  end

  def gallop
    "CLIPCLOP, CLIPCLOP, CLIPCLOP, CLIPCLOP"
  end
end

class Horse
  attr_accessor :name, :weight, :age, :color

  include Gaits

  def initialize(name, age, weight, color)
    self.name = name
    self.age = age
    self.weight = weight
    self.color = color
  end
end

mr_ed = Horse.new("Mr. Ed", 800, 19, "Brown")
