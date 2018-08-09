class Person
  @@pi = "blueberry"
  PI = "blueberry"

  def initialize(name, age)
    @name = name
    @age = age
  end

  def which_pi
    puts "Some prefer #{PI} pie, #{@name} prefers #{self.class::PI}"
  end
end

module Grading
  def grade(stack)
    stack.map do |assignment|
      assignment.grade = %w(A B C D F).sample
    end
  end
end

class Teacher < Person
  @@pi = 3.14 # The class variable initialized as "blueberry" in Person was just overridden.  There is only 1 copy for all inherited classes/modules
  PI = 3.14

  include Grading

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  def constant_pi # we would invoke the following 2 methods inorder to access them in Grading module
    PI
  end

  def class_var_pi
    @@pi
  end
end

class HomeWork
  attr_accessor :grade

  def initialize(student, document)
    @student = student
    @document = document
  end
end

cindy = Teacher.new("Cindy", 23, "Tech-Ed")
cletus = Person.new("Cluetus", 22)

homework = [HomeWork.new("Billy", "Trials of Salem"), HomeWork.new("Jennifer", "Hanson: 20 years later")] 

cindy.grade(homework) # Mutates the collection of HomeWork objects

cindy.which_pi
cletus.which_pi
