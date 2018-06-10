def traditional(normal_price, num_times)
  normal_price * num_times
end

def the500club(service_cost, discount, num_times)
  service_cost + discount * num_times
end

def movie(service_cost, normal_price, discount)
  num_times = 1
  loop do
    if traditional(normal_price, num_times) > the500club(service_cost, discount, num_times)
      return num_times 
    end
    num_times += 1
  end
end
