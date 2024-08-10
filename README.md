# Aprender Flutter

Se trata de un repositorio donde iré guardando los proyectos que vaya haciendo según vaya aprendiendo flutter/dart. Iré especificando de que tipo de aplicación se trata, cómo la he hacho (a partir de unvideo de YouTube, curso, o si me la he inventado yo). También especificaré algunas anotaciones según vaya aprendiendo cosas.

## Experimento 1

Es un proyecto basado en un video de YouTube. Básicamente he seguido el video como si fuera un tutorial para crear una pequeña app de cafes. El video es del canal Mitch Koko con esta [URL](https://youtu.be/RPvhoghXn54?list=PLlvRDpXh1Se6FF_srf1fcahvQX3qFk86v). En esta aplicación se utiliza una barra de navegación de google y se crean dos pantallas, una donde se eligen las bebidas que se desean y otra que representa el carrito con las bebidas elegidas.

### Anotaciones

Para utilizar una barra de navegacion, en este caso, se necesitan 3 StatefullWidgets. El primero es el que contiene la barra de navegación. Este se encarga de cambiar entre los otros 2 Widgets dependiendo del index seleccionado en la barra de navegación. Los otros 2 StatefullWidgets son las páginas, es decir, la página donde se eligen las bebidas y la página del carrito.

## Experimento 2

Es un proyecto basado en un video de YouTube. Básicamente he seguido el video como si fuera un tutorial para crear una pequeña app de comida. El video es del canal Mitch Koko con esta [URL](https://youtu.be/uSljGJGSl6w?list=PLlvRDpXh1Se6FF_srf1fcahvQX3qFk86v). En esta aplicación se utilizan google fonts como elemento nuevo. Se trata de una aplicación con una pantalla de inicio, una pnatalla donde se elige la comida deseada y una última pantalla donde se reprensenta el carrito con la comida elegida.

### Anotaciones

Para no poder volver a la pantalla de inicio se utiliza "Navigator.pushReplacement()" dento del GestureDetector. Por otra parte, en el FloattingActionButton de la página principal (la de elección de comida) se utiliza "Navigator.push()", para que cuando se acceda al carrito, luego se pueda volver a la página principal.

## Mi proyecto 1

Una vez "creados" los dos dos proyecto anteriores, creo este proyecto para probar los conocimiento aprendidos hasta aquí. Para ello he creado una app por mi propia cuanta que junta las dos anteriores, siendo una app de comida y bebida. Cuenta con una pantalla de inicio, una pantalla donde se podrá elegir la comida y otra donde se elegirá la bebida, por último, la pantalla del carrito.