# Ejercicio1

# Sobre implementar funcionalidad:
Los tests 01, 02 y 03 demuestran la funcionalidad de cómo se incrementa la cantidad de huevos de avispas a medida que los van dejando. Cuando los implementaste,
1) ¿esos tests pasaron (los tres) de una? 
2) ¿podrías haber implementado esta funcionalidad de a partes, haciendo que pase el 01, luego el 01 y el 02 y por último el 01, 02 y 03?
3) ¿se te ocurre cómo?

Y si lograste hacerlo,
4) ¿qué pensas de implementar esa funcionalidad de esa forma?

# Sobre código repetido:
5) ¿les quedó código repetido? ¿dónde? ¿Se animan a adivinar qué cosa del dominio les faltó representar (y por eso tienen código repetido)? Responsabilidad de dejar un huevo consumiendo otro insecto ¿Quién les quedó, en su modelo, que es el responsable de ver si hay suficientes polillas u orugas y entonces dejar un huevo? ¿el insecto (Polly, Oriana, etc) o el hábitat? ¿por qué? ¿por qué tendría sentido que fuera de la otra forma? ¿con cuál nos quedamos?

# Sobre código repetido 2
Con lo que vimos en la clase del Jueves (en la parte teórica, prototipos vs clases) ¿cómo sacarían este código? Sobre la implementación ¿cómo resolvieron guardar los huevos? ¿Usaron colecciones? ¿Diccionarios? ¿Uno, varios? ¿con qué indexaban? Pero la pregunta más importante: ¿es lo más sencillo que hacía falta? ¿o se podía hacer menos y todo andaba?


# Respuestas

1) No pasaron de una.
2) Si se puede.
3) Para que pase solo el primer test, tuvimos que inicializar la cantidadDeHuevosDeAvispas en 0.
   Después para que pase el primero y el segundo, para que hacerQueElHabitatTengaLosRecursosSuficientes, tuvimos inicializar la cantidad de orugas en 1 y    luego de reproducirse, decrementamos la cantidad de orugas e incrementamos la cantidadDeHuevosDeAvispa.
   Luego para que pase el primero, el segundo y el tercero, debo restaurar la cantidadDeHUevosDeAvispas en 0 nuevamente y también para que                  hacerQueElHabitatTengaLosRecursosSuficientes, tuvimos que inicializar la cantidad de orugas en 2.















