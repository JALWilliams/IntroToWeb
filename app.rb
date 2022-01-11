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

get '/random-cat' do
  @cat_name = ["Bianca", "Jerry", "Misty"].sample 
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @cat_name = params[:cat_name]
  erb(:index)
end

