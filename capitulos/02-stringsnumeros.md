# Strings y números

El siempre presente Hola mundo se puede escribir en Ruby como

```ruby
puts 'Hola mundo'
```
con salida
```
Hola mundo
```

`puts` es una función que tenemos disponible siempre. Podemos también invocarlo con
el parámetro entre paréntesis:

```ruby
puts('Hola mundo')
```

También admite más de un parámetro, pero en este caso, cada uno aparecerá en una
línea distinta:
```ruby
puts('Hola', 'mundo')
```
con salida
```
Hola
mundo
```

## Strings

Exploremos el tema de strings más en dRRetalle.

Ya vimos ejemplos de string entre comillas simples.
Pero veamos que también podemos poner un 
string entre comillas dobles:
```ruby
puts "Hola mundo"
```

¿Hay alguna diferencia? Pues sí: en los strings entre doble comillas podemos embeber
expresiones a evaluar en ese momento:
```ruby
nombre = 'Pepe'
puts "Hola #{nombre}"
```
El truco es el uso de `#{...}`. Ahí podemos poner cualquier expresión válida de Ruby, y al llegar
a evaluar el string, se reemplaza por el valor resultado de la expresión. Atención: esto es para
los string entre doble comillas, no funciona en los de simple comilla. Tampoco es algo relacionado
con `puts` sino que es algo de la evaluación de las constanstes string delimitadas
entre dobles comillas. Ver:
```ruby
# Estamos saludadores como peón de ferrocarril :-)
nombre = 'Pepe'
saludo = "Hola #{nombre}"
puts saludo
```

Es lo que se llama en otros lenguajes [String Interpolation](http://en.wikipedia.org/wiki/String_interpolation). 

> Vean que este tema de tener expresiones en los strings es un `viejo truco` presente en otros lenguajes.
Ahora pueden ir a cualquier fiesta de cumpleaños y decir muy orondamente: "Ya sé string interpolation
en Ruby" :-)

> Es nuestro primer encuentro con variables, como `nombre` y `saludo`. Vean que cuando
necesitamos una variable simplemente le asignamos un valor. No hace falta declararla como
en otros lenguajes. Tampoco tienen tipo: el tipo string corresponde al valor `"Hola"`, pero
la variable `saludo` puede ahora tener un string como mañana tener un número. Y como otros
lenguajes, Ruby distingue entre mayúsculas y minúsculas. Es decir, `saludo` y `Saludo` son nombres
distintos

> En el ejemplo de arriba, apareció nuestro primer comentario: todo lo que está
desde un `#` hasta el fin de la línea se considera un comentario, ignorado por el
intérprete Ruby

## Números

```ruby
subtotal = 100.00
tasaimpuesto = 0.21
impuesto = subtotal * tasaimpuesto
```
