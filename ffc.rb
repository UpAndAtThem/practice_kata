def order_weight(string)
  result_hsh = Hash.new([])
  string_arr = string.split(" ")
  count = 0

  loop do
    weight = string_arr[count].split("").map(&:to_i).reduce(&:+)
    
    if result_hsh[weight].empty?
      result_hsh[weight] = [string_arr[count]]
    else
      result_hsh[weight] << string_arr[count]
    end

    count += 1
    break if count == string_arr.size
  end

  result_hsh.values.each do |arr|
    arr.sort_by! { |elem| elem}
  end

  result_hsh = result_hsh.to_a.sort_by{ |key, value| key}.to_h
  
  result_hsh.values.join(" ")
end

def order_weight_clever(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ") # the sort_by method will use n if there is a tie on the first condition
end

weight_list = "56 65 74 100 99 68 86 180 90"

order_weight weight_list
