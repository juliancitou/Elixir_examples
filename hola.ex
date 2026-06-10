presentacion = "===============================================================\n\nHola este es mi primer programa en elixir :D"
IO.puts(presentacion)
a = "\n\nhola"
b = "#{a}, como te llamas? "
IO.puts(b)
nombre = IO.gets("Escribe tu nombre: ")
nombreLimpio = String.trim(nombre)
respuesta = "Bienvenido #{nombreLimpio}  a Elixir"
IO.puts("#{respuesta} \n\n===============================================================")
