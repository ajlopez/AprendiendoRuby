# Módulos y Mixins

Podemos definir clases en Ruby, cada una con un nombre. Pero también podemos tener problemas en la organización
y consumo de esas clases. Imaginen que alguien programa una clase `Factura` para una venta, y
nosotros programas otra clase `Factura` porque estamos armando la parte de compras del sistema. Para evitar
la colisión de nombres en Ruby tenemos los módulos. Pero no es su principal utilidad: sirven para organizar
nuestro código y encapsular lo que vamos escribiendo, sin afectar al resto del programa.

## Módulos

Podemos ver a un módulo como una especie de contenedor de métodos, clases y constantes. Los elementos que están dentro 
de un módulo se ven entre sí, pero no son visibles al código de afuera del módulo.

Pero veamos un ejemplo, para entender mejor el tema:

```ruby
module MiLibreria
    LARESPUESTAES = 42
    
    def saludar
        puts "Hola, soy método interno"
    end
    
    def MiLibreria.saludar
        puts "Hola, soy método de módulo"
    end
end
```

Como en otras partes de Ruby, un módulo es un bloque de código que termina en `end`.
