# Take a look at the following code:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# What output does this code print? Fix this class so that there are no surprises 
# waiting in store for the unsuspecting developer.

# took out the mutating upcase! method for the non mutative upcase call in the interpolation.

# when a new Pet object is created, the new method triggers initialize which calls to_s on our argument
# not the to_s that we have overridden by out Pets class, but the built in to_s method, which creates
# a new string object assigned to the instance variable @name.  Any time after the new object is instantiated
# when the to_s method is called on the Pet class our overridden to_s will be invoked.
