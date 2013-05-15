# Adaptado de http://stackoverflow.com/questions/5263528/what-is-rack-can-i-use-it-build-web-apps-with-ruby
# Ver tambien http://ruby.about.com/od/rack/a/Using-Rack.htm

class MyApp
  def call(environment) # este metodo se debe llamar call
    [200, # el codigo de estado
     {"Content-Type" => "text/plain", "Content-length" => "11" }, # encabezamiento
     ["Hola mundo"]] # el cuerpo
  end
end

# si se esta ejecutando este archivos
if $0 == __FILE__
  require 'rack'
  Rack::Handler::WEBrick.run MyApp.new
end