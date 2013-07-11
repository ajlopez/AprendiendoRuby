
# Adaptado de http://rubylearning.com/blog/a-quick-introduction-to-rack/

require 'rack'

def mymethod env
    [200, { "Content-Type" => "text/html" }, ["<h1>Hola</h1>", "<h2>Ahora es #{Time.now}</h2>" ]]
end

Rack::Handler::WEBrick.run method(:mymethod)

