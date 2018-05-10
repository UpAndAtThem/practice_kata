def dashatize(int)

  return 'nil' if int == nil

  int_arr = int.abs.to_s.split("")

  return  int_arr.join("") if int_arr.size == 1
  return  int.abs.to_s if int.to_s.prepend("-").to_i == int

  result = ''
  int_arr = int.abs.to_s.split("")

  int_arr.each_with_index do |num, index|
    if [0, (int_arr.size - 1)].include? index
      result << "-" + num if index != 0 && num.to_i.odd?
      result << num + "-" if index == 0 && num.to_i.odd?
      result << num unless num.to_i.odd?
      next
    end
    if num.to_i.odd? 
      result << "-" + num + '-'
    else
      result << num
    end
  end

  result.gsub!(/--/, '-')
  result
end
