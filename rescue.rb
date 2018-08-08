QUERY = ['API CALL RESULTS', nil, nil, nil, nil].freeze
TRY_LIMIT = 3

class ApiError < StandardError; end

begin
  tries ||= 1
  response = QUERY.sample

  raise ApiError if response.nil?

  response << '!'
  puts response

rescue ApiError
  tries += 1
  retry if tries <= TRY_LIMIT

  puts 'ERROR ERROR API RESPONSE NOT YET RETRIEVED!'
  
ensure
  puts 'This code always prints'

end
