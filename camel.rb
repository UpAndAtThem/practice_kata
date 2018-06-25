def to_camel_case(string)
  delimiter = string.match(/-/) ? "-" : "_"
  string_arr = string.split(delimiter).map(&:capitalize)
  string_arr[0].downcase!
  string_arr.join
end