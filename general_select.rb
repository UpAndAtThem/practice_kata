def general_select(produce, type)
  count = 0
  produce_keys = produce.keys
  result_hsh = {}

  loop do
    current_produce = produce_keys[count]
    
    result_hsh[current_produce] = type if produce[current_produce] == type
    
    count += 1
    break if count == produce.size
  end

  result_hsh
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat')      # => {}