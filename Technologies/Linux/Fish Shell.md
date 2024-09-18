## Como poner fish como shell predeterminada
Para esto lo que tenemos que realizar es fijarnos donde se nos instalo fish, en mi caso, es en /usr/bin/fish. Entonces lo que haremos es ejecutar los siguientes comandos:
Para que fish este predeterminada en todos los usuarios: 
~~~fish
chsh -s /usr/bin/fish
~~~
Y para que este en el super-usuario:
~~~fish
sudo chsh -s /usr/bin/fish
~~~
Listo, una vez que abramos la terminal de nuevo se tendremos fish como shell.

## Como crear alias en fish 
La sintaxis seria la siguiente:
~~~fish
alias nombre_asignado "comando_a_ejecutar"
~~~
Por ejemplo: 
 ~~~fish
 alias update "sudo pacman -Sy && sudo pacman -Syy"
 ~~~
 
 Esto lo que realizará, en arch linux,  es una actualización de todos los paquetes

 ## Instalar plugin en fish shell
 Primero lo que debemos hacer es ejecutar este comando:
 ~~~fish
 curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
 ~~~
 
 Luego, por ejemplo para instalar themas lo tenemos que hacer es:
 1. Primero instalar el tema:
 ~~~fish 
 omf install agnoster
 ~~~
 2. Definir el tema:
 ~~~fish
 omf theme agnoster
 ~~~
