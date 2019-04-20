class Order
  attr_reader :name
  attr_accessor :cart

  def initialize(name)
    @name = name
    @cart = {"Hamburger" => 6.99, "Fies" => 2.69, "Diet Coke" => 1.99}
  end

  def add_item(item)
    cart << item
  end

  def to_s
    @cart.keys.join(", ") + "."
  end
end