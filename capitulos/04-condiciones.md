# Condiciones

Como otros lenguajes, Ruby tiene comandos para tomar decisiones como
el `if` y otros. Estudiemos primero los valores de verdad y falsedad en Ruby,
y luego visitaremos el comando `if` y sus variantes.

## Falso y Verdadero

Si evaluamos en `irb`:

```ruby
2 == 3
```
obtenemos `false`. Si evaluamos
```ruby
4 >= 2
```
obtenemos `true`. Ruby tiene operadores de comparación. Vean que la igualdad
se distingue de la asignación: se usa el doble igual `==` para comparar
el resultado de dos expresiones.

> Nota: ha sido frecuente el distinguir en los lenguajes de programación la comparación
por igual de la asignación. Ruby sigue la larga tradición de C, C++ y otros, reservando
el doble igual para la igualdad. En cambio, Smalltalk y Pascal, por citar dos casos,
se decantaron por tener `=` para la comparación por igual, y otra serie de caracteres
para la asignación. Notablemente, la mayor parte de variantes de Basic han usado `=` para ambas
funciones

Como ya vimos con strings y números, tanto `false` como `true` son objetos, ya predefinidos.
Y como objetos tienen clase asociada y métodos. Cuando evaluamos:
```ruby
false.class
```
obtenemos
```ruby
FalseClass
```

Y cuando evaluamos
```ruby
true.class
```
obtenemos
```ruby
TrueClass
```

## Primeros Operadores

Tenemos que recordar siempre algo: lo que vimos como operadores de comparación
o aritméticos son en realidad métodos.

(A completar)

### El Método `===`

(A completar)

### And, Or y Not

(A completar)

## El Comando `if`

Nuestro primer ejemplo de `if`:

```ruby
if valor > 1
    puts 'El valor es mayor que 1'
end
```

Si extrañamos el `then` también podemos ponerlo:
```ruby
if valor > 1 then
    puts 'El valor es mayor que 1'
end
```

Por supuesto, podemos poner varias comandos dentro del cuerpo del `if`:
```ruby
if valor > 1 then
	puts 'Oia, pues fíjate'
    puts 'que el valor es mayor que 1'
end
```

Tenemos la rama `else`:
```ruby
if valor > 1 then
    puts 'El valor es mayor que 1'
else
    puts 'El valor NO es mayor que 1'
end
```

Y podemos usar `elsif`:
```ruby
if valor == 10
    puts 'El valor es diez'
elsif valor == 20
    puts 'El valor es veinte'
else
    puts 'El valor NO es ni diez ni veinte'
end
```

## Listas de Comandos

(A completar)

## El comando `unless`

```ruby
unless temperatura < 37
	puts 'Tiene fiebre'
else
	puts 'Todo está bien'
end
```

(A completar)

## El Comando `case`

```ruby
case i
    when 1 then puts('Es lunes')
    when 2 then puts('Es martes s')
    when 3 then puts('Es miércoles')
    when 4 then puts('Es jueves')
    when 5 then puts('Es viernes')
	else puts('Es fin de semana')
end
```

```ruby
put case i
    when 1 then 'Es lunes'
    when 2 then 'Es martes'
    when 3 then 'Es miércoles'
    when 4 then 'Es jueves'
    when 5 then 'Es viernes'
	else 'Es fin de semana'
end
```

```ruby
case i
    when 1 
	    puts('Es lunes')
    when 2
	    puts('Es martes')
    when 3
	    puts('Es miércoles')
    when 4
	    puts('Es jueves')
    when 5
	    puts('Es viernes')
	else
	    puts('¡Bravo!')
	    puts('Es fin de semana')
end
```

(A completar)

### Sintaxis Alternativa de `case`

(A completar)

## Comandos y Expresiones

(A completar)

## Modificadores `if` y `unless`

(A completar)

## Fuentes consultadas

- [True, False And Nil Objects In Ruby](http://www.skorks.com/2009/09/true-false-and-nil-objects-in-ruby/)
- [Ruby If, Else If Command Syntax](http://www.howtogeek.com/howto/programming/ruby/ruby-if-else-if-command-syntax/)
- [Ruby if...else, case, unless](http://www.tutorialspoint.com/ruby/ruby_if_else.htm)
- [How A Ruby Case Statement Works And What You Can Do With It](http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/)