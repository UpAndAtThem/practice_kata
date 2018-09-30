def display_top(n, leading_space, interior_space)
  (n/2).times do |_|
    puts ((" " * leading_space) + "*" + (" " * interior_space) + "*" + (" " * interior_space) + "*")
    interior_space -= 1
    leading_space += 1
  end
end

def display_base(n)
  puts "*" * n
end

def flower(n)
  return 'must provide odd number' if (n.even? || n < 5)

  interior_space = (n - 3)/2
  leading_space = 0

  display_top(n, leading_space, interior_space)
  display_base(n)
end

flower(11)
