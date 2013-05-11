# Strings y Números

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

(A completar)

## Son Objetos

Tanto los strings como los números son objetos en Ruby. Veamos de ejecutar en `irb`:

```ruby
irb(main):001:0> 123.to_s
=> "123"
irb(main):002:0> 123.class
=> Fixnum
irb(main):003:0> 123.methods
=> [:to_s, :inspect, :-@, :+, :-, :*, :/, :div, :%, :modulo, :divmod, :fdiv, :**, abs, :magnitude, :==, :===, :<=>, :>, :>=, :<, :<=, :~, :&, :|, :^, :[], :<<,
 :>>, :to_f, :size, :zero?, :odd?, :even?, :succ, :ord, :integer?, :upto, :downto, :times, :next, :pred, :chr, :to_i, :to_int, :floor, :ceil, :truncate, :round,
 :gcd, :lcm, :gcdlcm, :numerator, :denominator, :to_r, :rationalize, :singleton_method_added, :coerce, :i, :+@, :eql?, :quo, :remainder, :real?, :nonzero?, 
 :step, :to_c, :real, :imaginary, :imag, :abs2, :arg, :angle, :phase, :rectangular, :rect, :polar, :conjugate, :conj, :between?, :nil?, :=~, :!~, :hash, :class, 
 :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?,:trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, 
:private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, 
:instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, 
:to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
irb(main):004:0>
```

Lo que era hasta ahora un simple entero `123` es en realidad un objeto. Podemos
invocar a un método colocando el punto y nombre del método luego del valor. 
Vemos que `to_s` es un método que convierte el objeto a una representación a string.
Es similar al `toString` de Java o al `ToString` de .NET. No lleva parámetros, por
eso lo invocamos sin paréntesis, pero al igual que los otros, podríamos haber
escrito
```ruby
123.to_s()
```

El método `class` nos revela que un entero es un objeto de la clase `Fixnum`. Y
notablemente, el método `methods` nos da una lista de nombres de métodos
disponibles para el objeto al que estamos examinando. Esto nos muestra una
de las características de Ruby: es un lenguaje que nos permite averiguar en ejecución los métodos y otras
propiedades de los objetos y clases que estamos manejando. Se dice entonces
que Ruby soporta `reflection`.

> Nota: recuerdo los tiempos cuando esto de `reflection` no era tan común. Por
ejemplo, en el C++ inicial de los ochenta del siglo pasado, no había nada
implementado para conseguir dinámicamente los métodos disponibles en una clase
o instancia

Si revisamos la lista de métodos disponibles para los enteros, vemos que no nos
da una lista de nombres simples, sino de algo nuevo: son nombres precedidos por
`:`. En Ruby, se llaman símbolos, y su uso es muy común. Aprederemos sobre ellos
más adelante en este curso, pero por ahora podemos considerarlos como simples nombres
distinguidos

> El tener símbolos en Ruby es una de las influencias de Smalltalk en el diseño
de Matz

Y si revisamos de nuevo la lista de métodos, notablemente encontramos algunos
como `:+`. Y sí, los operadores aritméticos, en el fondo de su alma, son
métodos de los números. Podemos escribir en Ruby:

```ruby
1.+1   # => 2
2.+(2) # => 4, usando paréntesis
3.*3   # => 9
```

(A completar)

## Primeros Métodos de String

(A completar)

## Fuentes consultadas

- [Ruby Reflection](http://khelll.com/blog/ruby/ruby-reflection/)




