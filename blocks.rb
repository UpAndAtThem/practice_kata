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

  def my_select(&proc)
    result = []
    count = 0

    loop do
      break if count == self.count
      current_num = self[count]
      result << current_num if yield(current_num)
      count += 1
    end

    result
  end
end
