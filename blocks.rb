class Array # Don't do what this is doing, just for practice writing methods that take blocks
  def my_each
    count = 0

    loop do
      break if count == self.count

      yield self[count]

      count += 1
    end

    self
  end

  def my_select
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

arr = [1, 2, 3, 4]

arr.my_each { |elem| puts "elem is: #{elem}"}
p arr.my_select { |elem| elem.even?}