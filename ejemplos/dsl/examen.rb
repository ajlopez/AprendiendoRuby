
require 'singleton'

class Examen
  include Singleton

  def initialize
    @preguntas = []
  end

  def agregar_pregunta(pregunta)
    @preguntas << pregunta
  end

  def ultima_pregunta
    @preguntas.last
  end

  def ejecutar
    contador=0
    @preguntas.each { |q| contador += 1 if q.pregunta }
    puts "Tuvo #{contador} respuestas correctas en #{@preguntas.size} preguntas."
  end
end

class Pregunta

  def initialize( texto )
    @texto = texto
    @respuestas = []
  end

  def agregar_respuesta(respuesta)
    @respuestas << respuesta
  end

  def pregunta
    puts ""
    puts "Pregunta: #{@texto}"
    @respuestas.size.times do |i|
      puts "#{i+1} - #{@respuestas[i].texto}"
    end
    print "Enter respuesta: "
    respuesta = gets.to_i - 1
    return @respuestas[respuesta].correcta
  end
end

class Respuesta

  attr_reader :texto, :correcta

  def initialize( texto, correcta )
    @texto = texto
    @correcta = correcta
  end
end