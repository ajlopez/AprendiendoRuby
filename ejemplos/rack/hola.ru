
# Adaptado de http://cyx.is/understanding-rack.html

# rackup hola.ru

app = lambda do | env |
    [200, {'Content-Type' => "text/plain" }, ["Hola Mundo"]]
end

run app