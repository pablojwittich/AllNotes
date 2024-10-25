# Curos de Programacion Orientada a Objetos - Php
by: https://youtu.be/UyNZxmrouso

## ¿Qué es la POO?
La Programación Orientada a Objetos (POO) es un paradigma de Programación mas utilizado, es decir, es una forma o un estilo de programación. Se basa en el concepto de [[Clases]] y [[Objetos]]. Este tipo de programación se utiliza para estructurar un programa de software en piezas simples y re-utilizables de planos de código (clases)  para crear instancias individuales de objetos. 
Una clases es una planilla que define de manera genérica cómo van a ser los objetos. Las clases tienen [[Atributos]](características o variables) y [[Métodos]](acciones o funciones).
Ejemplo Goku:
- Atributos:
  - Nobmre: Goku
  - Cabello: Negro
  - Ojos: Negros
  - Dientes: Blancos
- Métodos:
  - Kamekameha
  - Teletranspotación
  - Caminar
  - Volar


Ejemplo Base Datos:
- Atributos: 
  - Host: Localhost/
  - DB: inventario
  - User: root
  - Pass: 12345
- Metodos:
  - Guardar Datos
  - Seleccionar Datos
  - Actualizar Datos
  - Eliminar Datos

## Qué es y como definir una Clase, un Método y un Atributo
 Por convención si el nombre de una clase tiene mas de una palabra se pone en mayuscula la primera letra de cada palabra.
 Lo primero a colocar son los  [[modificadores de acceso]] (tema que tocaremos despues) luego los el nombre del atributo.
Al no ponerle que tipo de dato será la variable el interprete asumirá que tipo será cuando le agreguemos el dato a la variable. Esto seria una forma de trabajar como [[Tipado Dinamico]].  Tambien se puede trabajar poniendo que tiempo de dato tendrá esa variable como un [[Tipo estricto]].

Los métodos tambien van con algún modificador de acceso, el nombre del método, entre parentesis si es que lleva algun atributo (si se quiere se puede definir si el atributo tiene que ser una string, int, bool, float, etc.) y por ultimo el codigo a ejecutar, entre llaves {}, llamando o no al atributo. Si uno quiere utilizar una variable ya definida afuera del scope de la función, por ejemplo la de nombre, se tiene que anteponer el "$this->" (Con la flecha accedemos a la variale). Y quedaria de la siguiente forma: "$this->nombre". 

A los metodos tambien se le puede poner que tipos de datos tiene que devolver. Esto se lo introduce luego de los parentesis donde van los atributos. 

~~~php
<?php
class MiPrimeraClase
{
  // Atributos
  // modificadores + tipo de dato + Nombre variable = Dato de la variable;
  public string $nombre = "Pablo"; 
  public int edad = 26; 
  
  // Metodos
  // modificador + funcion + nombre de la funcion + (atributo) 
  public function Saludar(string $nombre):string
  {
    return "Hola ".$nombre." ¿Cómo estas? Yo soy ".$this->nombre ;
    // "Hola (nombre que se inserto) ¿Cómo estas? Yo soy pablo"
  }

}
~~~





























