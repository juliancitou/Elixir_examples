# ELIXIR 
Ejercicio simples y/o complejos para practicar en elixir con explicación dentro del codigo para dejar un poco mas claro el como funciona.

### PARA INICIAR
Nesecitas tener Elixir instalado y Erlang. revisa el sitio oficial para la instalacion desde el siguiente link: 
https://elixir-lang.org/install.html 

### COMO COMPILAR
Para poder compilar necesitas entrar a la carpeta donde estan alojados los archivos desde terminal y ahi mismo compilar el codigo que quieras revisar con el comando. 

``` bash
elixir calculadora_tupla.exs
```

### EJECUTAR IEX PARA PRUEBAS INDIVIDUALES
Si quieres probar por tu cuenta con la experiencia y escribir codigo desde la terminal de IEX lo puedes hacer realizando lo siguiente desde terminal, puedes entrar a la terminal de Windows y escribir: 
``` powershell
PS C:\Users\user_name> iex.bat
``` 

Aparecera algo como lo siguiente en la terminal:
```powershell
Erlang/OTP 28 [erts-16.4.0.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [jit:ns]

Interactive Elixir (1.19.5) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)>
```

Dentro de este esta nueva terminal puedes escribir y probar comandos de elixir, por ejemplo:
```powershell
iex(1)> 1+1
2
iex(2)> x = 23
23
iex(3)> y = x + 2
25
iex(4)> {:hola, "Buenos", "dias", 23}
{:hola, "Buenos", "dias", 23}
``` 

# PHOENIX FRAMEWORK

Para iniciar algun proyecto de Pheonix y poder ver lo que se ha contruido dentro tendras que... primero entrar al proyecto de interes, por ejemplo:
``` bash
cd pento
```
Dentro tendras que descargar las dependencias