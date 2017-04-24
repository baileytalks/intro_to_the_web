require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'Secret handshake'
end

get '/another-route' do
  'Another route...'
end

get '/funtimes' do
  'FUNTIMES!'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
