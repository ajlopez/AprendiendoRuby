# Adaptado de http://cyx.is/understanding-rack.html

class Hola
  def self.call(env)
    req = Rack::Request.new(env)  # request
    res = Rack::Response.new      # response, llenado incrementalmente

    case req.path
    when "/"
      res.write "Hola Mundo"      # Podemos usar varios res.write
    when "/datetime"
      res.write Time.now.rfc2822
    else
      res.status = 404            # Podemos declarar el estado
      res.write "404 Not Found"
    end

    # Ponemos el Content-Type. Valor asumido: text/html
    res.headers["Content-Type"] = "text/plain"

    res.finish                    # Retorna la tupla, 200 es el estado asumido
  end
end

run Hola