# Aporte de los mensajes de DD
En un double dispatch (DD), ¿qué información aporta cada uno de los dos llamados?

La información que aporta cada uno de los llamados, es el tipo de clase al que pertenece el objeto que realiza el llamado.


# Lógica de instanciado
Con lo que vieron y saben hasta ahora, ¿donde les parece mejor tener la lógica de cómo instanciar un objeto? ¿por qué? ¿Y si se crea ese objeto desde diferentes lugares y de diferentes formas? ¿cómo lo resuelven?

La lógica de cómo instanciar un objeto es mejor tenerla en los métodos de clase, ya que no tendría sentido que se encuentre en los métodos de instancia, porque la responsabilidad de como crear cada instancia debería ser de la clase ya que cada una de ellas es única y no debería saber cómo crear el resto de instancias. En caso de que se requiera crear ese objeto en distintos lados y de diferentes formas, pueden crearse métodos de inicialización dónde se ejecutaría internamente el método que tiene la lógica de cómo instanciarlo.


# Nombres de las categorías de métodos
Con lo que vieron y trabajaron hasta ahora, ¿qué criterio están usando para categorizar métodos?

Para categorizar los métodos, nos fijamos en el nombre y el comportamiento de éstos, entonces agrupamos los que sean parecidos. Y en caso de ser métodos que se ejecutan de forma interna, además de categorizarlos mirando las características antes mencionadas, también se los categoriza como privados, para dar a entender que son métodos que no tienen que ser utilizados ni modificados por un usuario.


# Subclass Responsibility
Si todas las subclases saben responder un mismo mensaje, ¿por qué ponemos ese mensaje sólo con un “self subclassResponsibility” en la superclase? ¿para qué sirve?

Ponemos "self subclassResponsibility", por el simple hecho de que si alguna subclase no entiende el mensaje enviado, iría a buscarlo a la superclase y devolvería un error, con el que indica que la respuesta a ese mensaje depende exclusivamente de la subclase.


# No rompas
¿Por qué está mal/qué problemas trae romper encapsulamiento?
Romper el encapsulamiento podría afectar el diseño del programa, ya que si un objeto verificara características de otro objeto para decidir su funcionamiento podría estar excediendo sus responsabilidades. También podrían generar problemas en el funcionamiento del programa, modificando métodos privados que se ejecutan de forma interna, los cuales no deberían ser utilizados por el usuario.
