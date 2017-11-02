class Primes
  def first(num) # returns arr of first num length of prime numbers from 2 on
     @num = num
     @result_arr = []
     @count = 2
     until @result_arr.size == @num
       @result_arr << @count if prime?(@count) 
       @count += 1
     end
     @result_arr
  end

  def prime?(num) #checks to see if a prime number
    @true_arr = []
    @num_arr = []
    1.upto(num) do |current_num|
      @true_arr << true if num % current_num == 0
      @true_arr << false if num % current_num != 0
      @num_arr << current_num
    end
    return false if @true_arr.count(true) > 2
    return true  if @true_arr.count(true) <= 2 
  end

  def last(num_arr, num) # returns the last num elements from arr
    num_arr[-num, -1]
  end
end

first_x_primes = Primes.new.first(500).last(5)