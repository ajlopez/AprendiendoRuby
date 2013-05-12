# Bloques, Procs y Lambdas

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

> Nota: De nuevo, acá se ve la influencia de Smalltalk donde también hay bloques, similares a los
de Ruby. Si hasta la notación de encerrar los parámetros a recibir entre barras verticales viene
de Smalltalk

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

Notación alternativa:
```ruby
[1,2,3].collect{ |x| x*2 }
```

(A completar: ejemplos de funciones de arreglos que reciben una función)

## Procs y Lambdas

Ya fue mencionado que en todo en Ruby es un objecto. Pero ahora veamos una excepción: los bloques. No podemos
hacer cosas como usar un método en solitario

```ruby
{ |x| x*2 } # <= error
```

Ni tampoco adosarle a un bloque la invocación de un método

```ruby
puts({ |x| x*2 }.class) # <= error
```

Pero podemos convertirlos en un objeto con:
```ruby
a = Proc.new { |x| x*10 }
b = lambda { |x| x*10 }
c = proc { |x| x*10 }
```

Una vez que tenemos al bloque como objeto, lo podemos invocar con:
```ruby
a.call(3)
```

Una diferencia entre `Proc.new` o `proc` y `lambda` es que la llamada a un objeto `Proc` no revisa la cantidad
de parámetros, mientras que un objeto creado con `lambda`, si es invocado con una cantidad incorrecta de
parámetros, dará error.

Otra diferencia, algo más sutil, es: algo armado con `Proc.new` o `proc`, si tiene un `return`, éste
no solamente interrumpe el bloque, sino que además termina y retorna del método desde el que fue invocado.

(A completar: más explicación de diferencia entre Proc.new, proc y lambda)

## Fuentes consultadas

Es muy interesante el tema de `Proc.new`, `proc`, `lambda` y sus diferencias. Para este tema he consultado:

- [When to use lambda, when to use Proc.new?](http://stackoverflow.com/questions/626/when-to-use-lambda-when-to-use-proc-new)
- [Understanding Ruby Blocks, Procs and Lambdas](http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/}
- [Ruby Procs And Lambdas (And The Difference Between Them)](http://www.skorks.com/2010/05/ruby-procs-and-lambdas-and-the-difference-between-them/)
- [Control flow differences between Ruby Procs and Lambdas](http://www.akshay.cc/blog/2010-02-14-control-flow-differences-between-ruby-procs-and-lambdas.html)
- [Lisp in 32 lines of Ruby](http://blog.fogus.me/2012/01/25/lisp-in-40-lines-of-ruby/)

