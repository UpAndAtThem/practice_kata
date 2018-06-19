# Write a function that takes an (unsigned) integer as input,
# and returns the number of bits that are equal to one in 
# the binary representation of that number.

def count_bits(n)
  n.to_s(2).chars.count("1")
end

count_bits(1234) #=> 5