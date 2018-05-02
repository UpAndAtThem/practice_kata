def largest_num(numbers)
  largest_num = nil

  numbers.each do |elem|
    largest_num ||= elem
    largest_num > elem ? next : largest_num = elem
  end

  largest_num
end

numbers = [1, 2, 3, 4, 69, 5, 67, 52]

largest_num numbers
