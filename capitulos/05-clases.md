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
Notablemente, el `new` es un método de la clase. Y como tal, se invoca
colocándolo luego del nombre de la clase (que es una instancia de la clase `Class`)
con un punto intermedio.

Si ejecutan esta creación de objeto en el Ruby interactivo, recibirán como
valor algo como:

```
#<Object:0x00000002b85e50>
```

indicando la clase de la cual es instancia ese nuevo objeto, y un número interno
asignado a esa instancia, exhibido en hexadecimal. Es similar a los `hash code`
de Java y .NET.

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

Los `def` que pongamos en el cuerpo de la clase definen métodos de las instancias.

Y apareció algo nuevo: el `@nombre` es un nombre de variable de instancia. Como
pasó con las variables globales, Ruby distingue los distintos alcances por cómo
comienza el nombre de variable. Esa variable `@nombre` residirá en cada
instancia de nuestra clase `Perro`, y no se podrá acceder directamente desde
afuera del objeto.

> Nota: No los quiero confundir ahora, pero hay formas de acceder a esa variable
de instancia desde fuera del objeto. Lo veremos más adelante, cuando veamos las
capacidades de reflection de Ruby.

### Creando una Instancia

Y ahora, ¿cómo creamos un objeto de la clase `Perro`? Podemos usar

```ruby
neron = Perro.new
neron.set_name "Nerón"
```
Si estamos en `irb` y evaluamos `neron` el resultado será algo como:
```
#<Perro:0x00000002351db0>
```
Vemos que no podemos ver el nombre que contiene esta instancia. Aprendamos algo nuevo. Todo objeto
en Ruby tiene un método `inspect`. Evaluamos
```ruby
neron.inspect
```
y obtenemos
```
#<Perro:0x00000002351db0 @nombre="Nerón">
```
Siempre podemos apelar a este método si tenemos alguna duda sobre el estado de un objeto.

Pero quisiéramos ahora un método para obtener el nombre de nuestra mascota. En otros lenguajes, no podríamos
extender la clase luego de haberla definida. Pero acá aparece una característica destacable de Ruby: las clases
están abiertas a ser extendidas. ¿Qué significa esto? Veamos de ingresar en cualquier momento de `irb` o en cualquier
archivo `.rb`:

```ruby
class Perro
    def get_nombre
        return @nombre
    end
end
```

Y luego de esto, todas las instancias de la clase `Perro` tienen un nuevo método `get_nombre`. Podemos
ahora evaluar:

```ruby
neron.get_nombre
```

### Inicializando una Instancia



(A completar: ejecución de comandos en la definición de una clase)

