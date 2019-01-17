require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"
require 'pry'

before do
  @contents = File.read('./data/toc.txt').split("\n")
end

get "/" do
  @title = "The Adventures of Sherlock Holmes"
  @chapter_num = "1"
  erb(:home)
end

get "/chapters/:number" do
  @chapter_num = params[:number].to_i
  @chapter_title = @contents[@chapter_num - 1]
  @contents = File.read('./data/toc.txt').split("\n")
  @title = "Chapter #{@chapter_num}: #{@chapter_title}"
  @chapter_text = File.read("./data/chp#{@chapter_num}.txt").split("\n\n")
  @chapter = "Chapter #{@chapter_num}"
  erb(:chapter)
end
