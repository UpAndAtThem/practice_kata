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

rick.age # cannot access instance getter method age and name because it is private.

# instantiated objects do not have access to protected methods outside the method definition, but is treated like a public method from within the method definition.
# instantiated objects never have access to private methods outside or inside the method.  private methods are only accessible from other methods in the class. private methods cannot be invoked with an explicit calling object (# EX self.private_method or Mcgruff.private_speak)


# inheritance is behavior that is passed down and shared from a superclass to its subclasses, that way behavior can live in one place and we can avoid reusing code. Inheritance is used to share behavior that is common. Ruby allows for one superclass per class.
