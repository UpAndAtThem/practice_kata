class Person
  @@pi = "blueberry"

  def initialize(name, age)
    @name = name
    @age = age
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
  @@pi = 3.14 ## the class variable initialized as "blueberry" in Person was just overridden.  There is only 1 copy for all inherited classes/modules
  
  include Grading

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
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

cindy.grade(homework) #mutates the collection of Homework objects

