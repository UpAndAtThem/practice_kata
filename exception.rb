begin # the code in question that may raise an exception
  hello # reference to uninitalized local variable hello which will raise NameError from the StandardError exception class
rescue NameError => e # the code that deals with error handling of NameError exceptions and passes the block e the error object
  puts e.message # e calls the instance var message to output the exception
end