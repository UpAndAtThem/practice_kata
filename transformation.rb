#append an 's' to the end of each fruit

fruits = ['apple', 'banana', 'pear']
transformed_elements = []
current_fruit = ''
counter = 0

loop do
  current_fruit = fruits[counter]

  transformed_elements << current_fruit + 's'

  counter += 1
  break if counter == fruits.size
end

puts fruits
puts transformed_elements