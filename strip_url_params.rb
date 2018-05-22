def strip_url_params(url, to_delete = [])
  domain, query = url.split('?')

  return url unless query

  non_duplicate = remove_duplicate_params(query)

  to_delete.each { |param| non_duplicate.delete(param) } unless to_delete.empty?

  result = domain + '?' + non_duplicate.values.join('&')

  return result[0..-2] if result[-1] == '?'
  result
end

def remove_duplicate_params(query)
  query.scan(/(([\w])=\w+)/)
       .each_with_object([])
       .with_object({}) do |(match, keys_arr), non_duplicate|
         non_duplicate[match[1]] = match[0] unless keys_arr.include?(match[1])
         keys_arr << match[1]
       end
end
