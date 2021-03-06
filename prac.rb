# OOP BENEFITS

# Object Oriented programming is useful because it creates encapsulated objects that have their own scope where the code runs uninpeded 
# from the rest of the program. It creates a polymorphic interface which helps when you want the same interface for differing objects with a different outcome.  
# Its easier to scale because instead of one big piece of code running, you have standalone objects that can be expanded and refactored 
# without causing a huge butterfly effect in the codebase. Plus object orient programming allows programmers to think about
# code in an abstract way, with nouns acting as classes, and verbs being the classes behavior.

# ---------------------------------------------------

# ENCAPSULATION

# Hiding functionality and state from outside code. Effectively keeping the code safe from outside interference, by controling the access to the encapsulated code, only exposing publically the interfaces
# that which are needed to properly interact with the object itself. You can set public, private, and protected methods for a class, It will help you control access levels,
# which will affect the interface of how instantiated objects can interact with its internals.

# instantiated objects do not have access to protected methods outside the class definition, but is treated like a public method from within the class definition.
# instantiated objects never have access to private methods outside or inside the class.  Private methods are only accessible from other methods in the class. private methods cannot be invoked with an explicit calling object (# EX self.private_method or mcgruff.private_method)
# public methods are available anywhere, no access control is enforced. Public methods are the interfaces objects use externally, all methods are public by default unless it follows the keyword private or protected.

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

# is behaviors inherited from a superclass to all of its subclasses.  A way to achieve polymorphism as well as resusing code that shares common behavior among the inheritance structure.  
# Extract shared behavior from multiple classes into a superclass, which in turn you forego the need for repetion of code.  Behavior from superclasses 
# are inherited by all subclasses, but not the other way around. Superclasses inherit nothing from its subclasses. In order to subclass the symbol < is used after the class name in the definition followed 
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

# ----------------------------------------------------

# INHERITANCE VS MODULES

# use inheritance if its an "is a" relationship. Use modules if its a "has an ability" relationship.  For instance choose 
# inheritance for hierachical relationships. ex: Beagle inherits from Mammal which inherits from Animal.
# use modules for behaviors or abilities. ex: the ability to fly would use the flyable module.
# modules are a collection of behaviors that can be mixed into multiple classes, unlike inheritance, classes can mixin as many modules they need, 
# where as a class can only subclass from one class.  modules acts similarly to inheritance, but modules cannot be instantiated like a class can.

# In the above code, the classes Fish and Mammal both subclass from Animal, again, because it has an "is a" relationship (A fish and a mammal are animals). We also want to reuse the swim functionality without having to 
# put the same code into 2, 3, 4 or however many classes we need to grant the ability to swim. swim wont fit into Mammal or Animal classes because not all of their subclasses share that behavior. In order to solve this we need to use a module.
# The module Swimmable is created, and mixed in to the Dog and Fish classes with the keyword include followed by the module name, this will now give those classes that shared behavior.
  

# METHOD LOOKUP PATH

# method look up path is the path ruby takes when trying to do method resolution.  Ruby first looks within the class that the calling object belongs to.  
# Ruby will then look through all of the mixed in modules in reverse order from which they were included. Ruby will then use inheritance, checking 
# the superclass of the calling object, followed by the superclasses modules, again in reverse order of inclusion.  
# Ruby will Check The superclasses superclass, then the modules, until it reaches the BasicObject class. It then looks through BasicObject's methods and modules.  
# If at this point there is no resolution, ruby was unable to find the method it was searching for, and will throw a NoMethodError exception and crash the program.

# To check for the method lookup path of a class you can use the class method 'ancestors'

# In the above code the Method lookup path of a Fish object would be Fish, Swimmable, Animal, Object, Kernel, BasicObject

# CLASS

# Classes act as a blueprint or a basic outline for objects. Classes are encapsulated code with pulbic interfaces that acts as an abstraction of real world objects (IE: Person class, Box class, Dice class, etc)
# A class defines, and encapsulates an objects state and behavior. State tracks attributes, and is created at the object level
# whereas behavior is what an object is capable of, and is shared at the class level.  instantiated objects of a class all share the behaviors defined by the class.  
# Instance variables a.k.a. 'an objects state' are not shared, it's only available to the specific instantiated object.
# Which is how different objects of the same class can hold different states from one another.

# -------------------------------------------------------------

# INSTANCE METHODS

# instance methods are methods that are called on an instance of a class.  Its the public interface an object uses to expose its state, or invoke its defined behaviors.    

class Dog
  def speak
    puts 'Woof Woof'
  end
end

doggie = Dog.new
doggie.speak # speak is an instance method that an instantiated Dog object, being pointed at by the variable doggie, is invoking.

# -----------------------------------------------------------

# ATTR_METHODS

# attr_reader, attr_writer, and attr_accessor are methods used to create getter and setter methods.

# 'attr_accessor :name' is essentially the same as defining both of the following instance methods.

def name=(name) # setter method
  @name = name
end

def name # getter method
  @name
end

# if you only want to define the getter method use 'attr_reader'
# if you only want to define the setter method use 'attr_writer'
# if you want to define both the getter and setter method use 'attr_accessor'

# -----------------------------------------------------------

# OBJECTS

# objects are instantiations of a class.  A class is what defines an object.  Objects have state and behavior. 
# State, or an objects attributes are created at the object level and are unique to each individual instance. 
# Behaviors are shared at the class level, by all instances of the same class.

# ------------------------------------------------------------

