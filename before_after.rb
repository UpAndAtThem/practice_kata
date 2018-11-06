def compare(str)
  puts "Before: #{str}"

  block_result = yield str
  puts "After: #{block_result}"
end

# or explicitly named block parameter.

def compare(str, &block)
  puts "Before: #{str}"

  block_result = block.call(str)
  puts "After: #{block_result}"
end

# The 2nd implementation allows us to pass the block variable proc object to other methods.

compare('hi') { |word| word.upcase }

# Output:
# Before: hi
# After: HI