class Array # Don't do what this is doing, just for practice writing methods that take blocks
  def my_each(&proc)
    count = 0
    loop do
      break if count == self.count
      yield self[count]
      count += 1
    end
    self
  end
end

arr = ["one", "two", "three"]

arr.my_each do |elem|
  puts(elem + "!")
end