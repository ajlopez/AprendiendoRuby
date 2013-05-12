require './examen.rb'

def pregunta(text)
  Examen.instance.agregar_pregunta Pregunta.new(text)
end

def correcta(text)
  Examen.instance.ultima_pregunta.agregar_respuesta Respuesta.new(text,true)
end

def incorrecta(text)
  Examen.instance.ultima_pregunta.agregar_respuesta Respuesta.new(text,false)
end

load 'preguntas.txt'

Examen.instance.ejecutar