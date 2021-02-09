require 'sinatra'

set :session_secret, 'super secret'

@name = ""

get '/' do
  "Hello!"
end

get '/secret' do
  "This is a secret page!"
end

get '/cat' do
  @name = ["Freddo", "Bertie", "Oliver"].sample
  erb(:index)
end