def solve(string)
  while string =~ /\(/
    string.gsub!(/(\d*)\((\w*)\)/) do |match| 
      $2 * $1.to_i
    end
  end
  string
end

solve("2(a3(1(Z)))")
