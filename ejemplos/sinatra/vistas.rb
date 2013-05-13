require 'sinatra'

get '/' do
  erb :index
end

get '/clientes' do
  erb :clientes, :locals => { :nclientes => 10 }
end

get '/clientes/:id' do |id|
  erb :cliente, :locals => { :cliente => Cliente.new(id, "Cliente #{id}") }
end

# http://localhost:4567

class Cliente
  def initialize(id, nombre)
    @id = id
    @nombre = nombre
  end
  
  def id
    @id
  end
  
  def nombre
    @nombre
  end
end
