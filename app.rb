require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "This is a secret page!"
end

get '/random-cat' do
  @name = ["Muggins", "Stoofer", "Oliver"].sample
  erb(:index)
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index) 
end

get '/cat-form' do
  erb(:cat_form)
end