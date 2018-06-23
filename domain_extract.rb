def domain_name(url)
  url.match(/\w+:\/\/(www.)?(\w+-?\w+)/) { |match| $2}
end