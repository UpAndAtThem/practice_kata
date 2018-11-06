lambda_object = lambda { |arg| puts("Inside Lambda: arg is: #{arg}"); break}
proc_object = Proc.new { |arg| puts("Inside Proc: arg is: #{arg}"); break}

loop do
  proc_object.call "Juniper Berries are delicious"
end

loop do
  lambda_object.call "Forever rapping on my chamber door!"
end

# lambdas act like methods. The break keyword isn't recognized in the scope of main, causing the infinite loop.
# The lambda evaluates break, and implicitly returns nil as the return of lambda.call.  
# Procs are more like blocks, bound to the scope within which it was created.
