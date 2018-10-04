# ---------------------------------------------------
# ENCAPSULATION

# hiding functionality and state away from outside objects and code from having access to the encapsulated code. Effectively keeping the code safe 
# from outside interference, and only exposing publically the interfaces (instance and class methods) 
# that which are needed to properly interact with the object itself. You can set public, private, and protected methods for a class, It will help you control access levels,
# which will affect the interface of how instantiated objects can interact with its internals.

# instantiated objects do not have access to protected methods outside the class definition, but is treated like a public method from within the class definition.
# instantiated objects never have access to private methods outside or inside the class.  Private methods are only accessible from other methods in the class. private methods cannot be invoked with an explicit calling object (# EX self.private_method or Mcgruff.private_method)
# public methods are available anywhere, no access control is enforced. public methods are the interfaces objects use externally, all methods are public by default unless it follows the keyword private or protected.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  private

  attr_reader :age, :name

  public

  def greeting
    puts "Hello my name is #{name}, I am #{age} years old" # because of the private keyword, the getter methods name and age are only accessable within methods that are inside the class which 'name' and 'age' belong, and cannot be invoked an explict calling object.
  end
end

rick = Person.new("Rick", 33)

rick.greeting # can access name and age i-methods because it's being invoked within the method definition without being invoked by the instantiated Person (self keyword) calling object.

# rick.age cannot access instance getter method age and name because it is private NoMethodError.
# The class person is an example of encapsulation.  The state and behavior is wrapped up in the class definition and the only things that have access to that code are instantiated objects of the same class or from within other methods of the same class.


# ----------------------------------------------------------

# INHERITANCE

# Allows behaviors to be passed down from a superclass to all of its subclasses.  A way to achieve polymorphism 
# as well as resusing code that shares common behavior among the inheritance structure without the need for repetion of code.  Behavior from superclasses 
# are inherited by all subclasses, but not the other way around. Superclasses inherit nothing from its subclasses. The symbol < is used after the class name in the definition followed 
# by the superclass that particular class is subclassing.

module Swimmable
  def swim
    puts "Swim swim swim..."
  end
end

class Animal

end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal

end

class Dog < Mammal
  include Swimmable
end

class Cat < Mammal

end


Dog.new.swim
Fish.new.swim
Cat.new.swim 

# INHERITANCE VS MODULES

# use inheritance if its an "is a" relationship. Use modules if its a "has an ability" relationship.  For instance choose 
# inheritance for hierachical relationships. ex: Beagle inherits from Mammal which inherits from Animal.
# use modules for behaviors or abilities. ex: the ability to fly would use the flyable module.

# METHOD LOOKUP PATH

# method look up path is the path ruby takes when trying to do method resolution.  Ruby first looks within the class the calling object belongs to.  
# Ruby will then look through all of the mixed in modules in reverse order from which they were included. Ruby will then use inheritance checking 
# the superclass of the calling object, followed by the superclasses modules, again in reverse order of inclusion.  
# Ruby will Check The superclasses superclass and then modules until it reaches the BasicObject class, then looks through its methods and modules.  
# If at this point there is no resolution, ruby was unable to find the method it was searching for, and will throw a NoMethodError exception and crash the program.

# To check for the method lookup path of a class you can use the class method 'ancestors' 

# CLASS

# Classes act as a blueprint for objects.  A class encapsulates an objects state and behavior.  State is available and created at the object level
# whereas behavior is shared by objects at the class level.  instantiated objects of a class all share the behaviors defined by the class.  
# Instance variables a.k.a. 'an objects state' are not shared, it's only available to the specific instantiated object.
# Which is how different objects of the same class can hold different states from one another.

