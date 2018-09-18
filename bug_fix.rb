class Person
  attr_reader :age
  
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  
  def full_name
    "#{@first_name} #{@last_name}"
  end
end