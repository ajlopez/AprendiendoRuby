
# Adaptado de http://cyx.is/understanding-rack.html

require 'rack'

my_app = lambda { |env| [200, { "Content-Type" => "text/html" }, ["<h1>Hola, mundo</h1>"]] }

Rack::Handler::WEBrick.run my_app
