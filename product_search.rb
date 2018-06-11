PRODUCTS = [{name: "Dell experion xl90", price: 250},
            {name: "Dell experion yrl90", price: 275},
            {name: "Dell experion Zlad90", price: 1001},
            {name: "Dell compact kl9f0", price: 350},
            {name: "Dell compact qlrd90", price: 459},
            {name: "Macbook pro", price: 1950},
            {name: "thinkpad x290", price: 250},
            {name: "thinkpad x390", price: 450},
            {name: "thinkpad x590", price: 1150}]

query = {price_min: 240,
         price_max: 1190,
         q: "thinkpad"}

query2 = {price_min: 350,
         price_max: 1490,
         q: "dell"}


def search(query)
  PRODUCTS.select do |product|
    find_name?(query[:q], product[:name]) && price_range?(query[:price_min], query[:price_max], product[:price])
  end
end

def find_name?(query_name, product_name)
  product_name.downcase.match?(query_name)
end

def price_range?(min, max, price)
  (min..max).include?(price)
end
