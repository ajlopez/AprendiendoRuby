# Variables

Ya estuvimos usando algunas variables. Exploremos ahora que hay varios tipos
de variables

## Variables Locales

Son las que vimos hasta ahora. Cuando las definimos en un archivo `.rb` viven
en todo el alcance de ese archivo. Comienzan con una letra minúscula. Las usamos
en un ejemplo anterior:

```ruby
subtotal = 100.00
tasaimpuesto = 0.21
impuesto = subtotal * tasaimpuesto
```

Si se usan en el cuerpo de una función

## Variables Globales

Como las locales, se pueden asignar en cualquier momento, pero son visibles
desde todo el programa. Ruby las diferencia porque comienzan con `$`. Ruby
no declara las variables como en otros lenguajes, pero le adosa distintos alcances
diferenciándolas por cómo comienza el nombre.

Para ver la diferencia entre variables locales y globales, veamos un ejemplo:

```ruby
local = 10
$global = 20

def unmetodo
    local = 15 # local a esta función
	$global = 25 # es la global, igual a la de afuera del método
    puts "local #{local}"
    puts "$global #{$global}"
end

# primeros valores

puts "Primeros valores"
puts "local #{local}"
puts "$global #{$global}"

# invocamos al método

puts
puts "Invocamos al método"
unmetodo

# valores

puts
puts "Nuevos valores"
puts "local #{local}"
puts "$global #{$global}"

```

La salida es
```
Primeros valores
local 10
$global 20

Invocamos al método
local 15
$global 25

Nuevos valores
local 10
$global 25
```

(A completar)