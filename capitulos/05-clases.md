# Clases y Objetos

Estuvimos explorando algo de la sintaxis de Ruby, algunos comandos disponibles
y hasta alguna función predefinida. Pero aún no vimos lo que es un ciclo
`for`, y nos quedan pendientes más métodos de objetos, strings y números.

Pero para entender mejor a Ruby, pasemos ahora a una de sus características
centrales: la programación de objetos, basados en clases, herencias y algo más.

> Nota: escribí 'algo más' porque si bien Ruby tiene una gran influencia
de Smalltalk, donde todo es un objeto de una clase, también tiene algunas
variantes que respetan ese modelo, pero van un poco más allá, como mixins y
métodos por instancia, implementados en una clase especial. Pero no nos adelantemos

## Creando un Objeto

Hay una clase predefinida, llamada `Object`. Podemos crear una instancia
de esa clase, usando:

```ruby
miobjeto = Object.new
```
Notablemente, el `new` es un método de la clase

> Nota: De nuevo, se ve acá la influencia de Smalltalk, donde el `new` es
un método de clase y se puede sobreescribir y hasta recibir parámetros. Lo
mismo pasa en Ruby. También se nota la influencia de Smalltalk en la existencia
de un método `initialize`.

## Nuestra Primera Clase

Hay clases ya definidas. Pero ¿cómo definimos nuestras propias clases?

```ruby
class Perro
    def set_nombre(unNombre)
        @nombre = unNombre
    end
end
```

Primero, una clase se puede definir en cualquier momento, dentro de un
archivo `.rb` o en forma interactiva en `irb`. Segundo, vemos que la definición
de una clase contiene comandos/expresiones (recuerden que en Ruby todo son
expresiones, solamente que yo todavía llamo a algunas cosas comandos), y
termina en un `end`.
