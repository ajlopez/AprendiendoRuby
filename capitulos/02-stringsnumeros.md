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

## Son Objetos

Tanto los strings como los números son objetos en Ruby. Veamos de ejecutar en `irb`:

```ruby
irb(main):001:0> 123.to_s
=> "123"
irb(main):002:0> 123.class
=> Fixnum
irb(main):003:0> 123.methods
=> [:to_s, :inspect, :-@, :+, :-, :*, :/, :div, :%, :modulo, :divmod, :fdiv, :**
, :abs, :magnitude, :==, :===, :<=>, :>, :>=, :<, :<=, :~, :&, :|, :^, :[], :<<,
 :>>, :to_f, :size, :zero?, :odd?, :even?, :succ, :ord, :integer?, :upto, :downt
o, :times, :next, :pred, :chr, :to_i, :to_int, :floor, :ceil, :truncate, :round,
 :gcd, :lcm, :gcdlcm, :numerator, :denominator, :to_r, :rationalize, :singleton_
method_added, :coerce, :i, :+@, :eql?, :quo, :remainder, :real?, :nonzero?, :ste
p, :to_c, :real, :imaginary, :imag, :abs2, :arg, :angle, :phase, :rectangular, :
rect, :polar, :conjugate, :conj, :between?, :nil?, :=~, :!~, :hash, :class, :sin
gleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?,
:trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :pr
ivate_methods, :public_methods, :instance_variables, :instance_variable_get, :in
stance_variable_set, :instance_variable_defined?, :remove_instance_variable, :in
stance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend,
 :display, :method, :public_method, :define_singleton_method, :object_id, :to_en
um, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__i
d__]
irb(main):004:0>
```