namespace holamundo
{
  enum Color
  {
    AZUL,
    ROJO,
    AMARILLO,
  }
  struct DatosPersonal
  {
    public int? edad;
    public float? altura;
    public string? nombre;
    public string? apellido;
    public Color colorFavorito;
  }

  public class Program
  {
    public static void Main(String[] args)
    {
      /*
       * string name = "Pablo";
      * int years = 27;
      * string country = "Argentina";

      * Console.WriteLine("Hola soy " + name + ", tengo " +
          years + " años y vivo en " + country);

      * string? color;
      * float? altura;

      * Console.WriteLine("Ingrese suc color favorito:");
      * color = Console.ReadLine();
      * Console.WriteLine("Su color favorito es: " + color);
      * Console.WriteLine("Ingresa tu altura");
      * altura = Convert.ToSingle(Console.ReadLine());
      * Console.WriteLine("Tu altura es de :" + altura);
      */
      DatosPersonal datos;
      Console.WriteLine("Ingrese su nombre:");
      datos.nombre = Console.ReadLine();

      Console.WriteLine("Ingrese su apellido");
      datos.apellido = Console.ReadLine();

      Console.WriteLine("Ingrese sus edad:");
      datos.edad = Convert.ToInt32(Console.ReadLine());

      Console.WriteLine("Ingrese su altura");
      datos.altura = Convert.ToSingle(Console.ReadLine());

      Console.WriteLine("Bienvenido " + datos.nombre + " " +
          datos.apellido + " al centro medico. Confirme si su edad es de: " +
          datos.edad + " años y si altura es de: " + datos.altura + " cm");
    }
  }
}
