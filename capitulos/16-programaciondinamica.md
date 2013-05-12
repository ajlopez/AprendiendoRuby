# Programación Dinámica

Ya he mencionado al comienzo que Ruby es un lenguaje dinámico. Pero ¿qué es lo que consideramos como
lenguaje dinámico?

Bueno, por una parte, Ruby es un lenguaje dinámicamente tipado. Las variables y métodos no tienen tipo,
sino que los valores que albergan y devuelven son los que son objetos de alguna clase. No hay variables
string o enteras, sino valores string y valores enteros. Lenguajes estáticamente tipados son Java y C#.

Pero también Ruby es dinámico porque puede:

- Evaluar expresiones que se calculan u obtienen en ejecución, en lugar de estar determinadas al momento
de lanzar el programa
- Modificar el propio programa en ejecución

## Programas Automodificables

Una cosa es escribir un programa, y otra es ejecutarlo. En los lenguajes compilados, todo el código
a ejecutar queda definido al escribirlo y compilarlo. Pero la mayoría de los lenguajes interpretados
permite evaluar código creado en el momento.

### El Gran `eval`

Esta función ya definida en Ruby nos permite tomar un string y evaluarlo como código Ruby. 
Por ejemplo, podemos pedir una línea por consola y evaluarla como expresión Ruby, si es válida:

```ruby
expresion = gets.chomp
eval(expresion)
```

Esto abre la puerta para que podamos, por ejemplo, tomar expresiones de campos de una base de datos, y evaluarlas
dinámica en nuestro programa. Y si lo que evaluamos implica definir un método, una clase, u otro elemento
de programación Ruby, estaremos modificando el programa en ejecución. Ejemplo:

```ruby
eval('def foo; puts "foo"; end')
```
define un nuevo método `foo` que podemos invocar de ahora en más.

### Otros Tipos de `eval`

(A completar: instance_eval, class_eval, module_eval)

### Definiendo un Método Dinámicamente

Supongamos que tenemos que definir una clase Semaforo con un estado interno que se puede modificar
por métodos:

```ruby
class Semaforo
    def rojo
        @estado = :rojo
    end
    
    def verde
        @estado = :verde
    end
    
    def amarillo
        @estado = :amarillo
    end
end
```

Acá fueron tres estados, pero podrían ser más. Hay otra forma de definir un método, usando `define_method`
que espera dos parámetros: un símbolo con el nombre del método a definir, y un bloque que sea el cuerpo
del método. Veamos:

```ruby
class Semaforo
    [:rojo, :verde, :amarillo].each do |nombre|
        define_method nombre do
            @estado = nombre
        end
    end
end
```

(A completar)

## Fuentes Consultadas

- [Ruby: Dynamically Define Method](http://blog.jayfields.com/2008/02/ruby-dynamically-define-method.html)
- [Ruby Metaprogramming: Declaratively Adding Methods to a Class](http://www.vitarara.org/cms/ruby_metaprogamming_declaratively_adding_methods_to_a_class)
- [Ruby’s define_method, method_missing, and instance_eval](http://www.trottercashion.com/2011/02/08/rubys-define_method-method_missing-and-instance_eval.html)
- [How do you pass arguments to define_method?](http://stackoverflow.com/questions/89650/how-do-you-pass-arguments-to-define-method)



