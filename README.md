# ELIXIR EXAMPLES
Ejercicio simples y complejos para practicar en elixir
___

## REQUISITOS
Requisitos escenciales para poder modificar este proyecto:
* Elixir 1.19.5
* Erlang/OTP 29
* Postgresql 18.4
* Node v24.16.0
* npm 11.13.0
___

## ELIXIR
Primero entraras a la carpeta de `Ejercicios_elixir` dentro es donde podras compilar los archivos `.exs`, recuerda que entras con:
``` bash 
cd Ejercicios_elixir
```
### Como compilar
Desde terminal podras compilar el codigo que quieras revisar con el comando 

``` bash
# EJEMPLO
elixir calculadora_tupla.exs
```

### Probar elixir desde Erlang (Opcional) 
Si quieres probar por tu cuenta con la experiencia y escribir codigo desde la terminal de IEX lo puedes hacer realizando lo siguiente desde terminal, puedes entrar a la terminal de Windows y escribir: 
``` powershell
> iex.bat
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
___
## PHOENIX FRAMEWORK
### Para empezar
Para empezar tendras que ingresar a un proyecto de los que estan disponibles para poder ver y probar.
``` bash
cd Proyectos_Phoenix_framework/
cd pento/
```

Dentro tendras que descargar las dependencias de de mix y tambien los necesario para cargar el frontend, esto se realiza de la siguiente manera: 
``` bash 
mix deps.get
cd assets && npm install
```
### Levantar servicio
Para levantar las vistas por localhost tendras que escribir.
``` bash 
> iex -S mix phx.server
```
Despues de realizar esto entra a tu navegado y entra al `localhost:4000`