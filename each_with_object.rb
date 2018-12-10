# each_with_object
#   iterates over the members of a collection and passes each element and an object to the block
#   value returned from block is ignored
#   when iteration is complete return the defined object.


# write own each_with_object
#   input ARRAY and an object and a block
#   yield each element and obj to block
#   return final value of obj.

# if array is empty, return the orig object passed as second argument (gaurd clause)

# Your method may use #each, #each_with_index, #inject, loop, for, while, or until to iterate


def each_with_object(arr, obj)
  return obj if arr.empty?

  arr.each do |elem|
    yield elem, obj
  end

  obj
end


each_with_object([1, 2, 3,], []) { |elem, obj| obj << elem * 1000 }