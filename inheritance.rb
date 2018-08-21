module Swimmable
  def swim
    self.class::SWIM
  end
end

class Animal
  include Swimmable

  @@legs = 4
  SWIM = "I'M A SWIMMING ANIMAL"

  def initialize(name)
    @name = name
  end

  def legs
    @@legs
  end
end

class Dog < Animal
  include Swimmable

  SWIM = "I'M A SWIMMING DOG"

  def dog_name
    "bark! bark! #{@name} bark! bark!"    # can @name be referenced here?
  end

  def change_legs
    @@legs = 2
  end
end

annie = Animal.new("Annie")
teddy = Dog.new("Teddy")