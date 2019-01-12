require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  b = binding
  @table_of_contents = File.read('./data/toc.txt')
  @title = "The Adventures of Sherlock Holmes"
  erb(:home)
end
