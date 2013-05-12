# Bloques

Cuando hablamos de bloques, pensamos en líneas de código, como las que están dentro
de un `if` o un `for`. En Ruby, un bloque es algo más especial: un bloque es código que se comporta
como un método pero sin nombre. Podemos verlo como un método anónimo. Veamos un ejemplo

## ¿Qué es un Bloque?

Nada mejor que ilustrar con código. Los números enteros tienen un método que permite usar al valor
numérico como valores para iterar:

```ruby
3.times do |i|
    puts i
end
```

La salida es
```
0
1
2
```

¿Cómo funcionó esto? Pues bien, el método `times` parece que no recibe nada como parámetro, pero en realidad,
recibió un bloque de código a ejecutar. Ese bloque comenzó con `do` y terminó en `end`.

Otra sintaxis, alternativa, es:

```ruby
3.times { |i|
    puts i
}
```
En este caso usamos llaves para encerrar al bloque de código.

Otro ejemplo de pasar un bloque en una llamada, familiar cuando manejamos arreglos, es:
```ruby
arreglo = ['uno', 'dos', 'tres']
arreglo.each do |elemento|
    puts elemento
end
```

## Usando Yield

Podemos escribir un método que reciba un bloque y lo ejecute, sin poner un parámetro explícito y usando
una nueva palabra `yield`. Ejemplo, extendamos a los números enteros con una nueva función:

```ruby
class Fixnum
    def mytimes
        for k in 1..self
            yield k
        end
    end
end
```

Vemos que `mytimes` no tiene declarado un parámetro. Podría tenerlos, pero no es el caso de este ejemplo. Pero
usa la palabra `yield`. Cuando llega a ese punto, Ruby espera que le hayamos pasado a esta función un bloque, que
se comporta como un parámetro adicional refernciado implícitamente por el `yield`. 
En este ejemplo, invocamos a ese bloque pasándole el argumento `k`.

Si ahora invocamos:

```ruby
3.mytimes do |i|
    puts i
end
```

La salida es
```
1
2
3
```

(A completar)

## Arreglos y Bloques

```ruby
[1,2,3].collect do |x|
    x*2
end
```
```ruby
[1,2,3].collect{ |x| x*2 }
```

(A completar: ejemplos de funciones de arreglos que reciben una función)
