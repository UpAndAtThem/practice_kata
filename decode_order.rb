MENU_ITEMS = %w(Burger Fries Chicken Pizza Sandwich OnionRings Milkshake Coke)

def decode_order(order_str)
  MENU_ITEMS.reduce([]) do |memo, item|
    while(/#{item}/.match(order_str)) do
      memo << item
     
      order_str = order_str.sub(/#{item}/, '')
    end

    memo
  end
end

decode_order 'FriesSandwichOnionRingsBurger'