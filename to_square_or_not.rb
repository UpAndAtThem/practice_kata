# Write a method, that will get an integer array as parameter and will process every number from this array.
# Return a new array with processing every number of the input-array like this:

# If the number has an integer square root, take this, otherwise square the number.

# [4,3,9,7,2,1] -> [2,9,3,49,4,1]

def root_or_square(arr)
  arr.map do |int|
    num = nil

    1.upto(int) do |count|
      num = count if count * count == int  
    end

    num ||= int * int
  end
end

int_arr = [4,3,9,7,2,1]

root_or_square int_arr