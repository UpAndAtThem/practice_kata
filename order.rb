class Order
  attr_reader :name
  attr_accessor :cart

  def initialize(name)
    @name = name
    @cart = []
  end

  def add_item(item)
    cart << item
  end
end