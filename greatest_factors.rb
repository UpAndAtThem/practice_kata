def factors(int)
  (1..int).select { |potential_factors| int % potential_factors == 0 }
          .sort { |a,b| b <=> a}
end

def greatest_common_factor(number1, number2)
  first_num_factors = factors(number1)
  second_num_factors = factors(number2)

  first_num_factors.each do |factor|
    return factor if second_num_factors.include? factor
  end
end