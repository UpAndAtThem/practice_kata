def select_fruit(produce)
  selected_fruit = Hash.new
  produce_keys = produce.keys
  count = 0

  loop do
    current_produce = produce_keys[count]

    if produce[current_produce] == 'Fruit'

      selected_fruit[current_produce] = 'Fruit'
    end

    count += 1
    break if count == produce.size
  end

  selected_fruit
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}