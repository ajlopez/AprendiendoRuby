# Introducción

Ruby es un lenguaje de programación de uso general, que ejecuta en múltiples plataformas. Es un lenguaje
interpretado, lo que posibilita que sea dinámico: incluso podemos tener programas que se modifican a sí
mismos en ejecución. Tiene muchas características en común con otros lenguajes tipo scripting, como Perl y
Python. Ruby tiene palabras claves en inglés, lo cual lo hace parecer a un Pascal moderno. Es orientado
objetos y se nota la influencia de Smalltalk en su diseño interno. El lenguaje Ruby fue creado por
Yukihiro Matsumoto (conocido en el ambiente como Matz). Su primera versión fue liberada en 1995. El mismo
reconoce en sus presentaciones que los lenguajes que influyeron en el diseño de Ruby fueron Smalltalk, Lisp
y Perl. También se menciona como influencias a Eiffel y Ada.

Pero como programadores, ¿qué podemos encontrar hoy en Ruby? Bueno, en mi opinión, Ruby tiene características
que es difícil de encontrar juntas en otros lenguajes:

- Es fácil de aprender
- Es fácil de escribir
- Es flexible
- Es poderoso
- Tiene un gran ecosistema de librerías (gemas) y frameworks
- Una comunidad activa

Espero que al leer estas páginas, les pueda transmitir por qué aseguro lo de arriba.

## Instalación

Ya les conté que Ruby es multiplataforma. Lo que en la práctica se traduce que pueden programar en Windows, Linux
y Mac OS/X usando Ruby, y con un poco de cuidado, usar el mismo código en todas esas plataformas. Eso lo convierte
en un excelente lenguaje para aprender y practicar: cuando uno escribe un sitio web, por ejemplo, en Windows, luego
lo puede desplegar en un servidor Linux sin mayor problema (bueno, siempre el diablo puede poner la cola ;-).

Este curso fue escrito usando Ruby 2.0, y espero seguir actualizándolo para cuando aparezcan nuevas versiones. Y fue
escrito y probado principalmente en máquinas con Windows. Pero todo lo que veremos se puede ejecutar con
Ruby 1.9.x, y en otras plataformas. Si encuentra algo que no es así, por favor reportarlo en los [issues de GitHub](https://github.com/ajlopez/AprendiendoRuby/issues)
de este repo.

(A completar)

## Ruby Interactivo

Con la instalación de Ruby viene un programa `irb` (de Interactive Ruby) que se puede invocar
desde la línea de comando. Por ejemplo

- Si estamos en **Mac OS X** abrimos `Terminal` e ingresamos `irb` y enter
- Si estamos en **Linux** abrimos un shell e ingresamos `irb` y enter
- Si estamos en **Windows** abrimos una caja de DOS e ingresamos `irb` y enter

Entonces aparece algo como

```
irb(main):001:0>
```

Y ahora ¿qué hacemos? Seamos educados, y saludemos al programa. Simplemente ingresamos `"Hola IRB"` y obtenemos

```
irb(main):001:0> "Hola IRB"
=> "Hola IRB"
```

Hasta podemos usarlo como una calculadora con esteroides :-)
```
irb(main):001:0> 1+2
=> 3
irb(main):002:0> 3/4
=> 0
```
Vean que en el último caso la división es entera.

Y tenemos funciones predefinidas
```
irb(main):001:0> puts "Hola IRB"
Hola IRB
=> nil
```
Noten que una cosa es el resultado de invocar a la función predefinida `puts`, que termina
imprimiendo en la consula el mensaje que le pasamos como parámetro, y otra cosa es lo que
esa función devuelve, el valor `nil`, que podemos por ahora asimilar al `null` de otros lenguajes
como C#, Java o JavaScript

> Nota: no hace falta verlo ahora, pero les adelanto que `nil` es un objeto, tiene métodos asociados y hasta una clase, la clase `NilClass`, cosa que no
asombrará a los programadores Smalltalk

Podríamos ingresar varias líneas, y definir funciones, e invocarlas. Vamos a ir viendo estos temas
pero si quieren, pueden probar cosas como:

```ruby
irb(main):001:0> n = 1
=> 1
irb(main):002:0> m = 2
=> 2
irb(main):003:0> def twice(a)
irb(main):004:1>    a*2
irb(main):005:1> end
=> nil
irb(main):006:0> twice(2)
=> 4
irb(main):007:0>
```

El `def twice(a)` hasta el `end` es la forma que tenemos en Ruby para definir
una función. En la línea 6 la invocamos, pasándole como único parámetro a `2`.

## Fuente consultadas:

- [Ruby in Twenty Minutes](http://www.ruby-lang.org/en/documentation/quickstart/)
