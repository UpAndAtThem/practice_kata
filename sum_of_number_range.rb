def get_sum(a,b)
  return a if a == b # if range is 1 return self
   a < b ? sum = (a..b).inject(:+) : sum = (b..a).inject(:+) # ternery used to order range
end

p get_sum 0, 2