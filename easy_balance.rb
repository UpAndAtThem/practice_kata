def balance(b)
  b.gsub!(/[^\w\d\s.]/, "")
  balance, items = b.split("\n\n")
  items = items.split("\n").map! { |item| item.split(" ")}
  [balance, items]
end

input = "1000.00!=\n\n125 Market !=:125.45\n126 Hardware =34.95\n127 Video! 7.45\n128 Book :14.32\n129 Gasoline ::16.10\n"

balance input