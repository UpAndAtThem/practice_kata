# encapsulation is hiding pieces of functionality in private methods, exposing publically (available outside of the method definition) only those which are needed in interact with the object properly.

# example

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  private

  attr_reader :age, :name

  public

  def greeting
    puts "Hello my name is #{name}, I am #{age} years old" 
  end
end

rick = Person.new("Rick", 33)

rick.greeting # can access name and age i-methods because it's being invoked within the method definition without being invoked by the instantiated Person (self keyword) calling object.

# rick.age cannot access instance getter method age and name because it is private NoMethodError.

# instantiated objects do not have access to protected methods outside the method definition, but is treated like a public method from within the method definition.
# instantiated objects never have access to private methods outside or inside the method.  private methods are only accessible from other methods in the class. private methods cannot be invoked with an explicit calling object (# EX self.private_method or Mcgruff.private_speak)




# ENCAPSULATION

# hiding functionality and state away from outside objects having access to them, and only exposing interfaces publically 
# that are needed to properly interact with the object itself.  You can set public, private, and protected methods for a class,
# which will affect the interface of how other classes and objects can interact with it.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  private
  attr_reader :name, :age

  public
  def greeting
    puts "Hello, my name is #{name} and I'm #{age}." # because of the private keyword, the getter methods name and age are only accessable within methods that are inside the class which 'name' and 'age' belong, and cannot be invoked an explict calling object.
  end
end

# INHERITANCE

# Allows behaviors to be passed down from a superclass to all of its subclasses.  A way to achieve polymorphism 
# as well as resusing code that shares common behavior among the inheritance structure without the need for repetion of code.  Behavior from superclasses 
# are inherited by all subclasses, but not the other way around. Superclasses inherit nothing from its subclasses. The symbol < is used after the class name in the definition followed 
# by the superclass that particular class is subclassing.

# INHERITANCE VS MODULES

# use inheritance if its an "is a" relationship. Use modules if its a "has an ability" relationship.  For instance choose 
# inheritance for hierachical relationships. ex: Beagle inherits from Mammal which inherits from Animal.
# use modules for behaviors or abilities. ex: the ability to fly would use the flyable module.

# METHOD LOOKUP PATH

# method look up path is the path ruby takes when trying to do method resolution.  Ruby first looks within the class the calling object belongs to.  
# Ruby will then look through all of the mixed in modules in reverse order from which they were included. Ruby will then use inheritance checking 
# the superclass of the calling object, followed by the superclasses modules, again in reverse order of inclusion.  
# Ruby will Check The superclasses superclass and then modules until it reaches the BasicObject class, looks through its methods and modules.  
# If at this point there is no resolution, ruby was unable to find the method it was searching for, and will throw a NoMethodError exception and crash the program.




