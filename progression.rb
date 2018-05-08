def progression_of_three(int_arr)
  same_apart = int_arr.combination(3).to_a.select do |arr|
    dist_bet_last_mid = arr[2] - arr[1]
    dist_bet_first_mid = arr[1] - arr[0]

    dist_bet_first_mid == dist_bet_last_mid
  end

  same_apart.select { |arr| (arr.reduce(&:+) % 3).zero? }
end

arr = [1, 2, 3, 5, 7, 9]

p progression_of_three arr
