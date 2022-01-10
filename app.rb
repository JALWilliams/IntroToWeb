require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Secretts"
end

get '/justine' do
  "hii"
end

get '/cat' do
  @cat_name = ["Bianca", "Jerry", "Misty"].sample 
  erb(:index)
end