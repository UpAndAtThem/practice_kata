class Array
  def my_tap
    yield(self)
    self
  end
end

arr = [1, 2, 3, 4, 5]

arr.my_tap do |arr|
  p "Array#my_tap yields the calling object to the block.  The calling object is #{arr}. Tap always returns self from the instance method"
end