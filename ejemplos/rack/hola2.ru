# Adaptado de http://cyx.is/understanding-rack.html

class Hola
  def self.call(env)
    case env["PATH_INFO"]
    when "/"
      [200, { "Content-Type" => "text/plain" }, ["Hola Mundo"]]
    when "/datetime"
      [200, { "Content-Type" => "text/plain" }, [Time.now.rfc2822]]
    else
      [404, { "Content-Type" => "text/plain" }, ["404 Not Found"]]
    end
  end
end

run Hola