BY: *https://youtu.be/i5_PA3Jglk0

## Contenido del curso
1. Variables y tipos de datos.
2. Estructuras de control de flujo.
3. Arreglos y colecciones.
4. Funciones y métodos.
5. POO.
6. Manejo de excepciones.
7. Acceso a datos (BD).
8. Desarrollo básico de aplicaciones con GTK.

## Hola Mundo
En nuestra carpeta de test corremos el comando para crear para un nuevo proyecto de consola, el cual es:
~~~fish
dotnet new console -o holamundo
~~~
Una vez creado el nuevo proyecto veremos la distribución de la carpeta del mismo:

>holamundo
|->bin
|->obj
|--Program.cs
|--holamundo.csproj

Abrimos el archivo "Program.cs" y encontraremos lo siguiente:

~~~c#
Console.WriteLine("Hola Mundo!");
~~~
Y con el siguiente comando desde la terminal en la carpeta del proyecto ejecutaremos el proyecto

~~~fish
dotnet run
~~~
Y tendremos como salida:
~~~fish
Hola Mundo!

## Variables y Tipos de datos
Una variable es un lugar donde se guarda información para luego ser utilizada. En C_sharp las Variables tienen un tipo de dato que define que tipo de información pueden almacenar. En concreto C_sharp maneja dos grupos de datos: los primitivos (bool, byte, char, short, int, long, float, double y decimal) y los complejos (strings, array, enum, struct, class)~
C_sharp es un lenguaje de programmacióón fuertemente tipado, cada variable posee un tipo de dato especifico y que no cambia durante la ejecución de un programa.
~~~
###Sintaxis de declaración de una variable
La sintaxis para definir una variable es :

~~~csharp
//tipo_dato nombre_variable;
//Ej: Definir variable..
int edad;

//Ej: Definir variable e iniciarla..
// tipo_variable nombre_variable op.asignación(=) dato ;
int edad = 26;
~~~
Hay que tener en cuenta que todas las sentencias en C# finalizan con punto y coma (;) salvo los bloques de codigos que utilizan las llaves para iniciar y finalizar {}.

Los nombres de las Variables deben comenzar con una letra minuscula, ni numeros y tampoco esta permitido el uso de caracteres especiales (excepto el guion bajo).

### Caracteristicas de las Variables
sbyte -> -128 a 127 -> 8 bits c.s
byte -> 0 a 255 -> 8 bits s.s
short -> -32.768 a 32.767 -> 16 bits c.s
ushort -> 0 a 65.535 -> 16 bits s.s
int -> -2.147.483.648 a 2.147.483.647 -> 32 bits c.s
uint -> 0 a 4.294.967.295 -> 32 bits s.s
long -> -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807 -> 64 bit c.s
ulong -> 0 a 18.446.744.073.709.551.615 -> 64 bits s.s

Ejemplo practico:

~~~csharp
namespace holamundo
{
  public class Program
  {
    public static void Main (String[] args)
    {
      int edad = 27;
      string nombre = "Pablo";
      string pais = "Argentina";

      Console.WriteLine("Hola! soy " + nombre + ", tengo " +
      edad + " años y vivo en " + pais);
    }
  }
}
~~~

### Variables con valores nulos.
El compilador cuando ve que una variable no esta inicializada larga un mensaje de error diciendo que dicha variable dice que no admite variables nulas y no se le cargo ningun valor.
Ante esto C_sharp nos deja crear variables nulas de la siguiente forma: tipo_variable**?** nombre_variable;
Ejemplo:
~~~csharp
int? edad; // varible nula
string nombre = "P4bl0"; //Variable común
~~~

### Metodo READLINE()
Ya conocemos el método para imprimir información por la pantalla. Ahora vamos a ver el método para pedir información y guardarla en una variable. Dicho método es readline() y se lo usa de la siguiente manera:

~~~csharp
namespace salidaConsola
{
  public class Program
  {
    public static void Main(String[] args)
    {
      float? altura;
      string? color;

      Console.WriteLine("Ingrese su color favorito");
      color = Console.ReadLine();
      Console.WriteLine("Su color favorito es: " + color);

      Console.WriteLine("Ingrese su altura:");
      // Como altura en un variable decimal se la tiene que convertir.
      // Y lo hacemos con el método Convert.ToSingle();
      altura = Convert.ToSingle(Console.ReadLine());
      Console.WriteLine("Su altura es :" + altura + "cm");
    }
  }
}
~~~

### Tipos de datos struct
Nos permiten crear tipos de datos personalizados que agrupan varios campos relacionados en una sola variable.
Primero tendremos que construir nuestro tipo de dato y luego de eso podremos inicializar y/o declarar alguna variable.
¿Cómo se construye?
~~~csharp
struct Estructura
{
  int Campo1; //Atributo 1
  string? Campo2; // Atributo 2 (acepta valor null)
}
~~~
#### ¿Cómo se declara?
~~~c#
Estructura datos;
~~~
C_sharp de forma predefinida a los atributos de una variable los hace privados, ed decir, que no podriamos acceder a ellos de forma predefinida a los atributos los hace privados, ed decir, que no podriamos acceder a ellos de forma directa. La solución a esto es al definirlo agregarle el prefijo "public" a esto se le llama el modificador de acceso.
~~~csharp
struct DatoPersonal
{
  public int? edad;
  public string? nombre;
}
~~~
#### ¿Cómo acceder a los atributos de un struct?
 Una vez habiendo definido los atributos con modifcadores publicos; es hora de empezar a inicializarlos.
Lo primiero que hay que hacer es declarar un dato del tipo de dato del struct, de la siguiente manera:
 ~~~csharp
public static void Main(String[] args)
{
  VariableStruct nombre_variable;
}
~~~
Una vez realizado esto podriamos acceder a los atributos asi:
~~~csharp
nombre_variable.atributo1 = "Hola Mundo";
nombre_variable.atributo2 = Console.ReadLine();
~~~
Ejemplo de como quedaria todo:
~~~csharp
namespace holamundo
{
  struct DatoPersonal
  {
    public string? nombre;
    public string? apellido;
  }
  public class Program
  {
    public static void Main(String[] args)
    {
      DatoPersonal datos;
      dato.nombre = Pablo;
      dato.apellido = Wittich;

      Console.WriteLine("Bienvendio " + datos.nombre
      + " " + datos.apellido);
    }
  }
}
~~~
### Tipos de datos Enum
Nos permiten definr un conjunto de valores constantes que representan un conjunto especifico de opciones. Estos sirven para mejorar la legibilidad y el mantenimiento del codigo.
El proceso de definicio e iniciación de los tipos enum es muy similar al de los tipos struct.
#### ¿Como se define un Enum?
Para definir un enum se lo hace en el scope (alcance) de namespace del programa. Para definirlo la sintaxis es la siguiente:
~~~csharp
namespace holamundo
{
  enum Color
  {
    AZUL,//0
    ROJO,//1
    AMARILLO//2
  }
}
~~~
Lo que hicimos es declarar un nuevo tipo de dato llamado color que contiene 3 opciones (AZUL, ROJO y AMARILLO). Las opciones que insertemos en una variable enum posee implicitamente un numero entero asignado; por default el primero teniene es el 0 (cero) el segundo el 2 (dos) y asi. Pero esto se lo puede cambiar de esta forma:
~~~csharp
namespace holamundo
{
    enum Color
    {
      AZUL = 2,
      ROJO = 5,
      AMARILLO = 0,
    }
}
~~~
#### ¿Como declarar una nueva variable con enum? 
De modo de practica vamos a declarar la variable enum dentro de una variable struct. Y lo hacemos de la siguiente forma:
~~~csharp
namespace
{
  enum Color
  {
    AZUL,
    ROJO,
    AMARILLO,
  }

  struct Favorito
  {
    public Color color;
  }
}
~~~
Ya teniendo creada la variable dentro de struct, vamos ahora a asignarle un valor...
~~~csharp
public class Program
{
  public static void Main(String[] args)
  {
    // creamos una variable tipo Favorito con el nombre de colorfav
    Favorito colorfav;

    //A la variable colorfav de la subindice color le agregamos dato AZUL del enum Color
    colorfav.color =  Color.AZUL;
  }
}
~~~

## Operaciones aritméticas
Los operadores son simbolos o palabras reservadas que se usan para realizar operaciones sobre los operandos. Los operandos pueden ser variables, constantes o expresiones; y por lo general el simbolo del operador espeficica la acción 
