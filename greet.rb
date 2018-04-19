#Given the code below, use a while loop to print "Hello!" twice.

def greeting(num_greetings)
  while num_greetings > 0
    puts 'Hello!'
    num_greetings -= 1
  end
end

number_of_greetings = 5
greeting number_of_greetings