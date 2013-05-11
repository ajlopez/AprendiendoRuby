# Control de Flujo

Como otros lenguajes, Ruby tiene comandos de control de flujo, como tomar
decisiones con `if` (y otros), ciclos con `for` (y otros), llamar a métodos,
retornar de métodos, etc. Veamos primero cómo son las condiciones, y luego,
algunos primeros ejemplos de comandos de control de flujo.

## Condiciones

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

## Fuentes consultadas

- [True, False And Nil Objects In Ruby](http://www.skorks.com/2009/09/true-false-and-nil-objects-in-ruby/)