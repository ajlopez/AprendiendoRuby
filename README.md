# Aprendiendo Ruby

Tutorial de programación en Ruby.

Quiero escribir en este repositorio mis experiencias al aprender Ruby, cómo es el lenguaje, como usarlo, qué conceptos
maneja, qué podemos construir.

Ruby es un lenguaje dinámico muy dúctil y con un gran ecosistema de librerías, las gemas (gems). En este tutorial
me quiero dedicar principalmente al lenguaje: que aprendamos juntos a escribir en Ruby lo que sabemos
de programación.

No es un tutorial dedicado a enseñar a programar. Presumo que quien lo lea y practique ya conoces algo de
programación. Pero espero que sea lo suficientemente claro para que se entienda para quien ya programe en
otro lenguaje.

## Índice

1. [Introducción](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/01-intro.md#introduccin)
1. [Strings y Números](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/02-stringsnumeros.md#strings-y-nmeros)
1. [Variables](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/03-variables.md#variables)
1. [Condiciones](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/04-condiciones.md#condiciones)
1. [Clases y Objetos](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/05-clases.md#clases-y-objetos)
1. [Arreglos y Diccionarios](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/06-arreglos.md#arreglos-y-diccionarios)
1. [Ciclos e Iteradores](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/07-ciclos.md#ciclos-e-iteradores)
1. [Métodos](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/08-metodos.md#mtodos)
1. [Bloques, Procs y Lambdas](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/09-blocks.md#bloques-procs-y-lambdas)
1. Símbolos
1. [Módulos](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/11-modules.md#mdulos-y-mixins)
1. Archivos y Entrada/Salida
1. Serialización
1. [Gemas](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/14-gemas.md#gemas)
1. Threads
1. [Programación Dinámica](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/16-programaciondinamica.md)
1. [Escribiendo un DSL](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/17-dsl.md#domain-specific-languages-en-ruby)
1. [Desarrollo Web con Sinatra](https://github.com/ajlopez/AprendiendoRuby/blob/master/capitulos/18-sinatra.md#desarrollo-web-con-sinatra)
1. (En construcción)

## Notas

Algunas palabras en inglés muy usadas en programación las he dejado tal cual (String, Array,... ). Puede ser
que no sea el estilo usado en países de habla hispana, pero es lo que se acostumbra en mi país Argentina.

## Recursos en Español

Una lista de recursos adicionales a visitar, en español

- [Aprende a Programar](https://github.com/rubyperu/aprende.a.programar/blob/master/README.md#aprende-a-programar)
- [Aprende a Programar con Ruby](http://rubysur.org/aprende.a.programar/) y [en GitHub](https://github.com/rubysur/aprende.a.programar)
- [Ruby desde otros lenguajes](http://www.ruby-lang.org/es/documentation/ruby-from-other-languages/) Interesante
comparación con otros lenguajes
- [Ruby en 20 minutos](http://www.ruby-lang.org/es/documentation/quickstart/)

## Recursos en Inglés

Por supuesto, hay mucha información en inglés

- [Ruby in Twenty Minutes](http://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby From Other Languages](http://www.ruby-lang.org/en/documentation/ruby-from-other-languages/)
- [Interactive Ruby](http://en.wikipedia.org/wiki/Interactive_Ruby_Shell)
- [10 Minutes to Your First Ruby Application](http://neurogami.com/content/10_minutes_to_your_first_Ruby_app/)
- [Programming Ruby, The Pragmatic Programmer's Guide, 1st ed](http://www.rubycentral.org/pickaxe)
- [Ruby Tutorial](http://www.tutorialspoint.com/ruby/index.htm)
- [Ruby User's Guide](http://www.rubyist.net/~slagell/ruby/)
- [The Bastards Book of Ruby](http://ruby.bastardsbook.com/)
- [Ruby under a microscope](http://patshaughnessy.net/ruby-under-a-microscope)
- [Guide to Ruby](http://mislav.uniqpath.com/poignant-guide/book/)
- [Ruby Warrior](https://www.bloc.io/ruby-warrior/#/)
- [Ruby on Rails Tutorial: Learn Web Development with Rails](http://ruby.railstutorial.org/)
- [Learn Ruby The Hard Way](http://ruby.learncodethehardway.org/)
- [10 Ways To Have Fun Coding 'Ruby'](http://www.efytimes.com/e1/fullnews.asp?edid=118026)
- [Ruby Learning](http://www.rubylearning.com/)
- [Ruby Tutorial with Code Samples](http://www.fincher.org/tips/Languages/Ruby/)
- [Confessions of an Unlikely Developer: HOW A BLACKSMITH LEARNED TO CODE AND 9 MONTHS LATER GOT HIRED MAKING $70K](http://joshuakemp.blogspot.com.ar/2013/11/how-blacksmith-learned-to-code-and-9.html)
- [The path of the Padawan Getting started with Ruby/RoR](http://blog.crowdint.com/2013/12/06/the-path-of-the-padawan.html#)
- [When Code Cries](http://www.slideshare.net/CoryFoy/goto-berlin-when-code-cries)
- [Hackety Hack!](http://hackety.com/)

## Temas de Ruby

- [Demystifying the Ruby GC](http://samsaffron.com/archive/2013/11/22/demystifying-the-ruby-gc)

## Fuentes consultadas

- [The Book of Ruby](http://www.sapphiresteel.com/ruby-programming/The-Book-Of-Ruby), Huw Collingbourne
- (En construcción)

En un capítulo pueden aparecer más fuentes, relacionados con el tema de esa
sección.

## Para hacer

Tengo un sitio de contenidos por temas, y otro que contiene exámenes tipo elección múltiple. Tengo que actualizarlos
para que tengan una sección Ruby.

## Orígenes

Hace ya tiempo que quería iniciar este proyecto. El dar una charla de [introducción a Ruby
en Buenos Aires](http://msmvps.com/blogs/lopez/archive/2013/05/07/introducci-243-n-a-ruby-en-buenos-aires.aspx) me ha dado la excusa para comenzar a pasar por escrito lo que quiero mostrar del lenguaje y
su forma de programación.

## Colaborar

Pueden colaborar de muchas maneras:

- Difundiendo el proyecto, en listas de programación, en Twitter, en un post, en una charla
- Enviando sugerencias y correcciones. Usemos los [issues de GitHub](https://github.com/ajlopez/AprendiendoRuby/issues)

