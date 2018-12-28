require "socket"
require 'pry'

server = TCPServer.new("localhost", 3003)

loop do
  client = server.accept
  first_request_line = client.gets
  second_request_line = client.gets

  http_method, path_and_params, http = first_request_line.split(" ")

  params = path_and_params.scan(/(\w+)=(\w+)/).to_h

  end_path_index = path_and_params.index("?") ? path_and_params.index("?") : -1
  path = path_and_params[0...end_path_index]

  client.puts "HTTP/1.1 200 OK\r\n\r\n"
  client.puts params
  client.puts first_request_line
  client.puts second_request_line

  client.close
  break
end