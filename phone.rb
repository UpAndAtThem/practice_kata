def create_phone_number(arr)
  arr = arr.map(&:to_s).join("")
  "(" + arr[0..2] + ")" + ' ' + arr[3..5] + '-' + arr[6..-1]
end