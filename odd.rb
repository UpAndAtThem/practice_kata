def odd?(int)
  (int.to_s[-1].to_i) % 2 != 0
end

p odd? 122