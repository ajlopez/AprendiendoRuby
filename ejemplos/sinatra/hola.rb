require 'sinatra'

get '/' do
  'Hola Sinatra'
end

get '/hola/:nombre' do
  "Hola #{params[:nombre]}"
end

# http://localhost:4567

