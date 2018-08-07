class TargetCenter
  def initialize
    @food_vendor = Restaurant.new("seafood", "big jims")
    @ticket_price = (20..80).to_a.sample 
  end

  def sell_ticket(person)
    person.wallet -= @ticket_price
  end
end

class Restaurant
  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Person
  attr_accessor :wallet, :name

  def initialize(wallet, name)
    @wallet = wallet
    @name = name
  end
end

john = Person.new(100, "John")
target_center = TargetCenter.new

target_center.sell_ticket(john)