greeting = ["hello", "everybody"]
num_arr = [1, 2, 3, 4, 5]

greeting.each { |word| puts word } # This is an example of a method which takes a block.  blocks cannot be sasved or ran independently. They are a part of a method call.

addition = Proc.new { |sum, num| sum + num }
p num_arr.inject(&addition) # This is an example of a proc which the & tells the method to read it as a block

greeting_proc = Proc.new { p "Hello World" }
greeting_proc.call

mult_two = lambda { |x| puts x*2 } #lambdas are similar to procs with minor differences.  Lamdas check argument numbers are correct and will throw an exception.
[1,2,3].each(&mult_two)

mult_two = lambda { puts "Hello World" }
mult_two.call

#lamdas treat the return keyword differently as well.  return isn't triggered with lamdas but it is with procs.