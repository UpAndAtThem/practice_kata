require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  b = binding
  @title = "TLOBV"
  erb(:home)
end
